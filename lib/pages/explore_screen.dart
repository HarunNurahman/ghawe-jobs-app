import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/jobboxes.dart';
import 'package:ghawejobapp/shared/search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cari Pekerjaan'.toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(text: 'Cari Pekerjaan'),
              ),
              SizedBox(height: 30),
              JobBoxes(
                logoComp: 'assets/images/img_gojek.png',
                jobDesk: 'Social Media Engineer',
                company: 'GoJek',
                location: 'Jakarta, Indonesia',
              ),
              SizedBox(height: 8),
              JobBoxes(
                logoComp: 'assets/images/img_tokped.png',
                jobDesk: 'Full Stack Developer',
                company: 'Tokopedia',
                location: 'Bandung, Indonesia',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
