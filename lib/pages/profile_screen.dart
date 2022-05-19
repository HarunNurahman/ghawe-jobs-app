import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/shared/config.dart';
import 'package:ghawejobapp/shared/experience_widget.dart';
import 'package:ghawejobapp/shared/skillbox_widget.dart';
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
                  contactInfo(),
                  const SizedBox(height: 20),
                  myConnection(),
                  const SizedBox(height: 30),
                  myDesc(),
                  const SizedBox(height: 30),
                  myExperience(),
                  const SizedBox(height: 30),
                  MySkill(),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding MySkill() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Keahlian Saya',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SkillBox(
                  skillIcon: 'assets/images/img_flutter.svg',
                  skillName: 'Flutter',
                ),
                SizedBox(width: 16),
                SkillBox(
                  skillIcon: 'assets/images/img_figma.svg',
                  skillName: 'Figma',
                ),
                SizedBox(width: 16),
                SkillBox(
                  skillIcon: 'assets/images/img_github.svg',
                  skillName: 'Git',
                ),
                SizedBox(width: 16),
                SkillBox(
                  skillIcon: 'assets/images/img_laravel.svg',
                  skillName: 'Laravel',
                ),
                SizedBox(width: 16),
                SkillBox(
                  skillIcon: 'assets/images/img_postman.svg',
                  skillName: 'PostmanAPI',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding myExperience() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pengalaman Saya',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          const Experience(
            logoComp: 'assets/images/img_tokped.png',
            jobDesk: 'Full Stack Mobile Developer',
            company: 'Tokopedia',
            experience: '2022',
          ),
          const SizedBox(height: 8),
          const Experience(
            logoComp: 'assets/images/img_tokped.png',
            jobDesk: 'Mobile Developer',
            company: 'Tokopedia',
            experience: '2022',
          ),
          const SizedBox(height: 8),
          const Experience(
            logoComp: 'assets/images/img_gojek.png',
            jobDesk: 'Internship Program',
            company: 'GoJek',
            experience: '2022',
          ),
        ],
      ),
    );
  }

  Padding myDesc() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tentang Saya',
            style: GoogleFonts.poppins(
              fontSize: 16,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row myConnection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: SvgPicture.asset('assets/images/img_linkedin.svg'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/home');
                },
                child: SvgPicture.asset('assets/images/img_dribbble.svg'),
              ),
            ),
          ),
        ),
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 0.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 3,
                spreadRadius: 1,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/home');
              },
              child: SvgPicture.asset('assets/images/img_github.svg'),
            ),
          ),
        ),
      ],
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



                  //   Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 30),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         'Keahlian Saya',
                  //         style: GoogleFonts.poppins(
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //       ),
                  //       const SizedBox(height: 8),
                  //       SingleChildScrollView(
                  //         scrollDirection: Axis.horizontal,
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Container(
                  //                   width: 56,
                  //                   height: 56,
                  //                   decoration: BoxDecoration(
                  //                     color: const Color(0xFFEEF2FC),
                  //                     borderRadius: BorderRadius.circular(5),
                  //                   ),
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.all(8.0),
                  //                     child: SvgPicture.asset(
                  //                         'assets/images/img_flutter.svg'),
                  //                   ),
                  //                 ),
                  //                 const SizedBox(height: 8),
                  //                 Text(
                  //                   'Flutter',
                  //                   style: GoogleFonts.poppins(
                  //                     fontSize: 10,
                  //                   ),
                  //                   textAlign: TextAlign.center,
                  //                 )
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),