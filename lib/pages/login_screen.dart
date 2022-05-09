import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/shared/buttons.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obsecureText = true;

  void _togglePass() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: kPrimaryColor),
        title: Text(
          'Masuk'.toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Header(context),
            const SizedBox(height: 30),
            TextField(),
            const SizedBox(height: 10),
            ForgotPassword(),
            const SizedBox(height: 10),
            LoginButton(),
            const SizedBox(height: 12),
            separator(),
            const SizedBox(height: 16),
            LoginMethod(),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }

  Padding ForgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Lupa Password? ',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed('/forgotpass');
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding LoginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Buttons(
        btnText: 'Masuk',
        press: () {
          Get.toNamed('/dashboard');
        },
      ),
    );
  }

  Row LoginMethod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: SvgPicture.asset('assets/images/img_google.svg'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: SvgPicture.asset('assets/images/img_facebook.svg'),
              ),
            ),
          ),
        ),
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 3,
                spreadRadius: 1,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/home');
              },
              child: SvgPicture.asset('assets/images/img_linkedin.svg'),
            ),
          ),
        ),
      ],
    );
  }

  Row separator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 30, right: 10),
            child: const Divider(thickness: 1),
          ),
        ),
        Text(
          'atau masuk dengan',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 30),
            child: const Divider(thickness: 1),
          ),
        ),
      ],
    );
  }

  Center Header(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/undraw_welcome.svg',
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          const SizedBox(height: 20),
          Text(
            'Hai, Selamat Datang!',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Senang Bisa Bertemu Dengan Anda',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }

  Widget TextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: (value) {
              bool _isValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
              if (!_isValid) {
                return 'Email tidak valid';
              }
              return null;
            },
            controller: _emailController,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: 'Masukkan Email Anda',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Password',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: (value) =>
                value!.isEmpty ? 'Password tidak boleh kosong' : null,
            controller: _passwordController,
            obscureText: _obsecureText,
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: _togglePass,
                child: Icon(
                  _obsecureText ? Icons.visibility_off : Icons.visibility,
                  color: kPrimaryColor,
                ),
              ),
              border: const UnderlineInputBorder(),
              hintText: 'Masukkan Password Anda',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
