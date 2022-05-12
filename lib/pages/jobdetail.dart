import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/shared/bullet_widget.dart';
import 'package:ghawejobapp/shared/buttons.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailScreen extends StatefulWidget {
  const JobDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  late bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              header(context),
              const SizedBox(height: 36),
              requirementBox(),
              const SizedBox(height: 30),
              benefitBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }

  Padding benefitBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Benefit',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BulletList([
                    'Lingkungan kerja yang menyenangkan',
                    'Gaji kompetitif',
                    'Jaminan kesehatan, THR, Uang Lembur, Bonus Proyek, dll.',
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding requirementBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Persyaratan',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BulletList([
                    'Memiliki kemampuan untuk bekerja secara mandiri',
                    'Memiliki kompetensi yang relevan',
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
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
    );
  }

  Padding descBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Persyaratan',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur ad ipiscing elit,  sed do eiusmod tempor incididunt ut labore et dolore  magna aliqua.',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur ad ipiscing elit,  sed do eiusmod tempor incididunt ut labore et dolore  magna aliqua.',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Center header(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/img_tokped.png',
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(height: 16),
          Text(
            'Full Stack Developer',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Tokopedia',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          const SizedBox(height: 16),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DKI Jakarta, Indonesia',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.location_on,
                color: kPrimaryColor,
                size: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}
