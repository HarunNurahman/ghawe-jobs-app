import 'package:flutter/material.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/shared/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    autoLogin();
    super.initState();
  }

  Future<void> autoLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? userToken = preferences.getString('user-token');
    if (userToken != null) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img_logo_white.png',
              width: 230,
            ),
            const SizedBox(height: 15),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
