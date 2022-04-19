import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/constant.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.btnText,
    required this.btnFont,
    required this.press,
  }) : super(key: key);

  final String btnText;
  final double btnFont;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TextButton(
        onPressed: press(),
        child: Text(
          btnText.toUpperCase(),
          style: TextStyle(
            fontSize: btnFont,
            color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
