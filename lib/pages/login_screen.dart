import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ghawejobapp/main.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/shared/themes.dart';
import 'package:ghawejobapp/shared/variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              txtRegister(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
