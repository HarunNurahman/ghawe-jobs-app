import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  profilePic(),
                  const SizedBox(height: 16),
                  fullName(),
                  const SizedBox(height: 4),
                  skill(),
                  const SizedBox(height: 10),
                  city(),
                  const SizedBox(height: 4),
                  contactInfo()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row contactInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.phone,
          color: kPrimaryColor,
          size: 8,
        ),
        const SizedBox(width: 6),
        Text(
          'xxxx-xxxx-xxxx',
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Row city() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on,
          color: kPrimaryColor,
          size: 8,
        ),
        const SizedBox(width: 6),
        Text(
          'Kota Bandung, Jawa Barat',
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Text skill() {
    return Text(
      'Junior Mobile Developer',
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Text fullName() {
    return Text(
      'Harun Nurahman',
      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Center profilePic() {
    return const Center(
      child: CircleAvatar(
        radius: 64,
        backgroundColor: kPrimaryColor,
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 56,
            backgroundImage: AssetImage('assets/images/img_avatar.jpg'),
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Profil Saya'.toUpperCase(),
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
