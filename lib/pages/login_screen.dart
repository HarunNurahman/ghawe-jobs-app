import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ghawejobapp/main.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
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

registerSubmit() async {
  try {
    await _auth.createUserWithEmailAndPassword(
        email: emailController.text.toString().trim(),
        password: passController.text);
  } catch (e) {
    print(e);
    SnackBar(content: Text(e.toString()));
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
              txtRegister(context),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
