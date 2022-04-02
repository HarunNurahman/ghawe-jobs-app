import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/pages/register_screen.dart';
import 'package:ghawejobapp/shared/themes.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController nameController = TextEditingController();

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

// Text loginWith() {
//   return const Text(
//     'Or Login With',
//     style: TextStyle(
//       color: Colors.black,
//     ),
//   );
// }

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

Container txtPass() {
  return Container(
    height: 40,
    margin: const EdgeInsets.symmetric(horizontal: 30),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: secondaryColor),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      textAlignVertical: TextAlignVertical.center,
      obscureText: true,
      autocorrect: false,
      enableSuggestions: false,
      controller: passController,
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        hintStyle: txtFieldStyle,
        prefixIcon: Icon(
          Icons.lock_outline,
          color: secondaryColor,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}

Container txtEmail() {
  return Container(
    height: 40,
    margin: const EdgeInsets.symmetric(horizontal: 30),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: secondaryColor),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
      textAlignVertical: TextAlignVertical.center,
      autocorrect: false,
      enableSuggestions: false,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Enter Your Email',
        hintStyle: txtFieldStyle,
        prefixIcon: Icon(
          Icons.mail_outline,
          color: secondaryColor,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}

Container txtName() {
  return Container(
    height: 40,
    margin: const EdgeInsets.symmetric(horizontal: 30),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: secondaryColor),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
      textAlignVertical: TextAlignVertical.center,
      autocorrect: false,
      enableSuggestions: false,
      controller: nameController,
      decoration: InputDecoration(
        hintText: 'Enter Your Full Name',
        hintStyle: txtFieldStyle,
        prefixIcon: Icon(
          Icons.person_outline,
          color: secondaryColor,
        ),
        border: InputBorder.none,
      ),
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
