import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/shared/buttons.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: kPrimaryColor),
        title: Text(
          'Daftar'.toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 30),
              // Header(context),
              const SizedBox(height: 30),
              TextField(),
              const SizedBox(height: 12),
              Separator(),
              const SizedBox(height: 16),
              LoginMethod()
            ],
          ),
        ),
      ),
    );
  }

  Row LoginMethod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
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
                )
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
          padding: const EdgeInsets.only(right: 16),
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
                )
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
        Padding(
          padding: const EdgeInsets.only(right: 0),
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
                )
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
        ),
      ],
    );
  }

  Row Separator() {
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
          'atau daftar dengan',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 30, left: 10),
            child: const Divider(thickness: 1),
          ),
        ),
      ],
    );
  }

  Padding TextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nama
          Text(
            'Nama Lengkap',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: (value) =>
                value!.isEmpty ? 'Nama tidak boleh kosong' : null,
            controller: _nameController,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: 'Nama Lengkap Anda',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // NO. HP
          Text(
            'No. HP',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: (value) =>
                value!.isEmpty ? 'No. HP tidak boleh kosong' : null,
            controller: _phoneController,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: 'No. HP Anda',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Email
          Text(
            'Email Anda',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            validator: (value) =>
                value!.isEmpty ? 'Email tidak boleh kosong' : null,
            controller: _emailController,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: 'Email Anda',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Password
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
            enableSuggestions: false,
            obscureText: _obsecureText,
            autocorrect: false,
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
          const SizedBox(height: 24),
          // Button
          Buttons(btnText: 'Daftar', press: () {}),
        ],
      ),
    );
  }

  Center Header(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/undraw_access_account.svg',
            width: MediaQuery.of(context).size.width * 0.6,
          ),
        ],
      ),
    );
  }
}
