import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:ghawejobapp/shared/config.dart';
import 'package:ghawejobapp/shared/jobboxes.dart';
import 'package:ghawejobapp/shared/recommendedjobboxes.dart';
import 'package:ghawejobapp/shared/search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String titletext = '';
  bool isSaved = false;

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Selamat Pagi';
    }
    if (hour < 17) {
      return 'Selamat Siang';
    }
    return 'Selamat Malam';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                const SizedBox(height: 30),
                GreetingText(),
                const SizedBox(height: 8),
                const SearchBar(text: 'Cari Pekerjaan'),
                const SizedBox(height: 30),
                TitleHeader(titletext: 'Acara Mendatang'),
                const SizedBox(height: 8),
                EventBox(),
                const SizedBox(height: 30),
                TitleHeader(titletext: 'Berdasarkan Minat Anda'),
                const SizedBox(height: 8),
                RecommendedJobs(),
                const SizedBox(height: 30),
                TitleHeader(titletext: 'Lowongan Terbaru'),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      JobBoxes(),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView RecommendedJobs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          // Main Box
          RecommendedJobBoxes(
            logoComp: 'assets/images/img_google.svg',
            jobDesk: 'Product Manager',
            company: 'Google Inc.',
            location: 'Jakarta, Indonesia',
            applicant: '1 - 10 Pelamar',
          ),
          SizedBox(width: 20),
          RecommendedJobBoxes(
            logoComp: 'assets/images/img_facebook.svg',
            jobDesk: 'Project Engineer',
            company: 'Facebook Inc.',
            location: 'Jakarta, Indonesia',
            applicant: '1 - 100 Pelamar',
          )
        ],
      ),
    );
  }

  SingleChildScrollView EventBox() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset('assets/images/img_event.png', height: 140),
          const SizedBox(width: 8),
          Image.asset('assets/images/img_event.png', height: 140),
        ],
      ),
    );
  }

  Row TitleHeader({String? titletext}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          titletext!,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          'Lihat Semua',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }

  Text GreetingText() {
    return Text(
      '${greeting()}, Pengguna',
      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Padding Header() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const CircleAvatar(
            radius: 36,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(
                  'assets/images/img_avatar.jpg',
                ),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashRadius: 0.1,
            icon: const Icon(
              Icons.notifications,
              color: kPrimaryColor,
              size: 36,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

