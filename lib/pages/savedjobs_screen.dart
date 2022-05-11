import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:ghawejobapp/shared/jobboxes.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedJobsScreen extends StatelessWidget {
  const SavedJobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Pekerjaan Tersimpan'.toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: JobBoxes(
            logoComp: 'assets/images/img_gojek.png',
            jobDesk: 'Back-End Developer',
            company: 'GoJek',
            location: 'Jakarta, Indonesia',
          ),
        ),
      ),
    );
  }
}
