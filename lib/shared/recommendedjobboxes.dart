import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:ghawejobapp/shared/requireboxes.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedJobBoxes extends StatefulWidget {
  const RecommendedJobBoxes({
    Key? key,
    required this.logoComp,
    required this.jobDesk,
    required this.company,
    required this.location,
    required this.applicant,
  }) : super(key: key);

  final String logoComp;
  final String jobDesk;
  final String company;
  final String location;
  final String applicant;

  @override
  State<RecommendedJobBoxes> createState() => _RecommendedJobBoxesState();
}

class _RecommendedJobBoxesState extends State<RecommendedJobBoxes> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/detail');
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        // Company Logo Box
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // Logo
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: SvgPicture.asset(
                        widget.logoComp,
                        height: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Job Desk & Company
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.jobDesk,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        widget.company,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Job Location
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.location,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  // Requirement
                  requireBox(require: 'Full-Time'),
                  SizedBox(width: 8),
                  requireBox(require: 'On-Site'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Button
                  GestureDetector(
                    onTap: () => {
                      Get.toNamed('/detail'),
                    },
                    child: Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Lamar',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    widget.applicant,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
