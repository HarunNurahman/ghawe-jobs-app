import 'package:flutter/material.dart';
import 'package:ghawejobapp/shared/class.dart';
import 'package:ghawejobapp/shared/themes.dart';
import 'package:ghawejobapp/shared/variables.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                header(),
                bodyAbout(context),
                bodySkills(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container bodySkills() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          secondCategory(category: 'My Skills'),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                mySkills(img: 'assets/icon/ic_git.png', titleSkill: 'Git'),
                SizedBox(width: 12),
                mySkills(
                    img: 'assets/icon/ic_kotlin.png', titleSkill: 'Kotlin'),
                SizedBox(width: 12),
                mySkills(
                    img: 'assets/icon/ic_node_js.png', titleSkill: 'NodeJS'),
                SizedBox(width: 12),
                mySkills(img: 'assets/icon/ic_react.png', titleSkill: 'React')
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Padding bodyAbout(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          secondCategory(category: 'About Me'),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE2E2E2),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel justo ac lacus vestibulum suscipit. Donec sed orci sagittis, tempor tortor nec, accumsan lorem. Mauris nec sapien sed diam ultrices pharetra. Nam venenatis porttitor mauris, nec dapibus tortor placerat id.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class mySkills extends StatelessWidget {
  const mySkills({
    Key? key,
    required this.img,
    required this.titleSkill,
  }) : super(key: key);

  final String img;
  final String titleSkill;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 239, 239),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 48,
            height: 48,
          ),
          const SizedBox(height: 16),
          Text(titleSkill)
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              Spacer(),
              Text(
                'My Profile',
                style: titleStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.settings_outlined,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Image.asset(
                'assets/images/img_profile.png',
                height: 85,
                width: 85,
              )
            ],
          ),
          const SizedBox(height: 20),
          UsernamePreferences(username: nameController.text),
          const SizedBox(height: 2),
          const Text(
            'Flutter Developer',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon/ic_connected_linkedin.png',
                width: 48,
              ),
              Image.asset(
                'assets/icon/ic_connected_discord.png',
                width: 48,
              ),
              Image.asset(
                'assets/icon/ic_connected_github.png',
                width: 48,
              ),
              Image.asset(
                'assets/icon/ic_connected_website.png',
                width: 48,
              )
            ],
          )
        ],
      ),
    );
  }
}
