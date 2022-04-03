import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/themes.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController nameController = TextEditingController();


// Text loginWith() {
//   return const Text(
//     'Or Login With',
//     style: TextStyle(
//       color: Colors.black,
//     ),
//   );
// }

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
      onSaved: (value) {
        passController.text = value!;
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
      onSaved: (value) {
        emailController.text = value!;
      },
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
