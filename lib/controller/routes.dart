import 'package:get/get.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/pages/onboarding_screen.dart';

class PageRoutes {
  static final pages = [
    GetPage(name: '/', page: () => onBoardingScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
  ];
}
