import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillBox extends StatelessWidget {
  const SkillBox({
    Key? key,
    required this.skillIcon,
    required this.skillName,
  }) : super(key: key);

  final String skillIcon;
  final String skillName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0xFFEEF2FC),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(skillIcon),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          skillName,
          style: GoogleFonts.poppins(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
