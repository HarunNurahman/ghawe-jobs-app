import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/shared/themes.dart';
import 'package:ghawejobapp/shared/variables.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final FirebaseAuth _auth = FirebaseAuth.instance;

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

class _RegisterScreenState extends State<RegisterScreen> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  header(),
                  const SizedBox(height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      txtName(),
                      const SizedBox(height: 15),
                      txtEmail(),
                      const SizedBox(height: 15),
                      txtPass(),
                      const SizedBox(height: 24),
                      btnRegister(context),
                      const SizedBox(height: 15),
                      txtLogin()
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  RichText txtLogin() {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: 'Already Have an Account? '),
          TextSpan(
              text: 'Login Here',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  decoration: TextDecoration.underline))
        ],
      ),
    );
  }

  GestureDetector btnRegister(BuildContext context) {
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
          'Create New Account',
          style: btnStyle,
          textAlign: TextAlign.center,
        ),
      ),
      onTap: () {
        registerSubmit();
        Route route =
            MaterialPageRoute(builder: (context) => const LoginScreen());
        Navigator.push(context, route);
        emailController.clear();
        passController.clear();
      },
    );
  }

  Container header() {
    return Container(
      width: double.infinity,
      height: 150,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [Image.asset('assets/images/img_welcome.png', height: 85)],
      ),
    );
  }
}
