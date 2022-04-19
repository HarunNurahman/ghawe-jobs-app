import 'package:get/get.dart';
import 'package:ghawejobapp/pages/onboarding_screen.dart';

class PageRoute {
  static final pages = [
    GetPage(name: '/', page: () => onBoardingScreen()),
  ];
}
