import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class requireBox extends StatelessWidget {
  const requireBox({
    Key? key,
    required this.require,
  }) : super(key: key);

  final String require;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          require,
          style: GoogleFonts.poppins(
            fontSize: 10,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
