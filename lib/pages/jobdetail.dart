import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailScreen extends StatefulWidget {
  const JobDetailScreen({Key? key}) : super(key: key);

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  late bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          splashRadius: 0.1,
        ),
        actions: [
          IconButton(
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
            splashRadius: 0.1,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Detail Pekerjaan'.toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
