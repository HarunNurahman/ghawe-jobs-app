import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/config.dart';
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(),
                )
              ],
            ),
          ),
        ),
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
            icon: Icon(
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
