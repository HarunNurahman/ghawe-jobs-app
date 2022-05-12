import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class JobBoxes extends StatefulWidget {
  const JobBoxes({
    Key? key,
    required this.logoComp,
    required this.jobDesk,
    required this.company,
    required this.location,
  }) : super(key: key);

  final String logoComp;
  final String jobDesk;
  final String company;
  final String location;

  @override
  State<JobBoxes> createState() => _JobBoxesState();
}

class _JobBoxesState extends State<JobBoxes> {
  late bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  widget.logoComp,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.jobDesk,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.company,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: kPrimaryColor,
                          size: 12,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          widget.location,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            splashRadius: 0.1,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
                isSaved = !isSaved;
                
              });
            },
            icon: isSaved
                ? const Icon(
                    Icons.bookmark,
                    color: kPrimaryColor,
                  )
                : const Icon(
                    Icons.bookmark_border,
                    color: kPrimaryColor,
                  ),
          ),
        ],
      ),
    );
  }
}
