import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/themes.dart';
import 'package:ghawejobapp/shared/variables.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
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
