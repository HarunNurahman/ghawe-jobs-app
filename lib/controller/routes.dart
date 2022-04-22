import 'package:get/get.dart';
import 'package:ghawejobapp/pages/home_screen.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/pages/onboarding_screen.dart';
import 'package:ghawejobapp/pages/register_screen.dart';

class PageRoutes {
  static final pages = [
    GetPage(name: '/', page: () => onBoardingScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/register', page: () => RegisterScreen()),
    GetPage(name: '/home', page: () => HomeScreen()),
  ];
}
