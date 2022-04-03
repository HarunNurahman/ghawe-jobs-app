import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ghawejobapp/main.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/pages/register_screen.dart';
import 'package:ghawejobapp/shared/themes.dart';
import 'package:ghawejobapp/shared/variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

String? errorMessage;
final FirebaseAuth _auth = FirebaseAuth.instance;
final _formKey = GlobalKey<FormState>();

loginSubmit(BuildContext context) async {
  if (_formKey.currentState!.validate()) {
    try {
      _auth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passController.text)
          .then((value) => {
                Fluttertoast.showToast(msg: 'Login Succesful'),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()))
              });
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          errorMessage = "Your email is wrong or doesnt exist";
          break;
        case "wrong-password":
          errorMessage = "Your password is wrong.";
          break;
        default:
          errorMessage = "User not found";
      }
      Fluttertoast.showToast(msg: errorMessage!);
      print(e.code);
    }
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      header(),
                      const SizedBox(height: 24),
                      txtEmail(),
                      const SizedBox(height: 10),
                      txtPass(),
                      const SizedBox(height: 8),
                      txtForgotPass(),
                      const SizedBox(height: 16),
                      btnLogin(context),
                      const SizedBox(height: 20),
                      LoginSeparator(),
                      const SizedBox(height: 20),
                      btnLoginMethod(context),
                    ],
                  ),
                ),
              ),
              txtRegister(context),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

RichText txtRegister(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
      children: <TextSpan>[
        TextSpan(text: 'Dont Have an Account? '),
        TextSpan(
          text: 'Register Here',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              decoration: TextDecoration.underline),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ),
              );
            },
        ),
      ],
    ),
  );
}

GestureDetector btnLogin(BuildContext context) {
  return GestureDetector(
    child: Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Login',
        style: btnStyle,
        textAlign: TextAlign.center,
      ),
    ),
    onTap: () {
      loginSubmit(context);
    },
  );
}

Row btnLoginMethod(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      GestureDetector(
        child: Image.asset('assets/icon/ic_login_google.png',
            width: 36, height: 36),
        onTap: () {
          Route route =
              MaterialPageRoute(builder: (context) => const HomeScreen());
          Navigator.push(context, route);
        },
      ),
      const SizedBox(width: 16),
      GestureDetector(
        child: Image.asset('assets/icon/ic_login_linkedin.png',
            width: 36, height: 36),
        onTap: () {
          Route route =
              MaterialPageRoute(builder: (context) => const HomeScreen());
          Navigator.push(context, route);
        },
      ),
    ],
  );
}

Container LoginSeparator() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30),
    child: Image.asset('assets/icon/ic_separator-grey.png'),
  );
}

RichText txtForgotPass() {
  return RichText(
    text: TextSpan(
      text: 'Forgot Password?',
      style: const TextStyle(
        fontSize: 14,
        color: Colors.grey,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.underline,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          print('Forgot Password');
        },
    ),
  );
}

Column header() {
  return Column(
    children: [
      Image.asset(
        'assets/images/img_logo_green.png',
        width: 230,
      ),
      const SizedBox(height: 50),
      Text(
        'Login to Ghawe',
        style: titleStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w300),
      ),
    ],
  );
}
