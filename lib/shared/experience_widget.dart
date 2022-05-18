import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Experience extends StatelessWidget {
  const Experience({
    Key? key,
    required this.logoComp,
    required this.job,
    required this.company,
    required this.years,
  }) : super(key: key);

  final String logoComp;
  final String job;
  final String company;
  final String years;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pengalaman Saya',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Row(
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
                    job,
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
                    years,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
