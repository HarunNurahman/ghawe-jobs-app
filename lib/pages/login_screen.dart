import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/img_logo_green.png',
                width: 200,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
