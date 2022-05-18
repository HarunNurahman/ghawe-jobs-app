import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
    required this.logoComp,
    required this.jobDesk,
    required this.company,
    required this.experience,
  }) : super(key: key);

  final String logoComp;
  final String jobDesk;
  final String company;
  final String experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          logoComp,
          width: 48,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              jobDesk,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              company,
              style: GoogleFonts.poppins(
                fontSize: 10,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              experience,
              style: GoogleFonts.poppins(
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}
