import 'package:get/get.dart';
import 'package:ghawejobapp/pages/dashboard_screen.dart';
import 'package:ghawejobapp/pages/forgotpass_screen.dart';
import 'package:ghawejobapp/pages/jobdetail.dart';
import 'package:ghawejobapp/pages/login_screen.dart';
import 'package:ghawejobapp/pages/onboarding_screen.dart';
import 'package:ghawejobapp/pages/register_screen.dart';

class PageRoutes {
  static final pages = [
    GetPage(name: '/', page: () => onBoardingScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/register', page: () => RegisterScreen()),
    GetPage(name: '/dashboard', page: () => Dashboard()),
    GetPage(name: '/forgotpass', page: () => ForgotPassword()),
    GetPage(name: '/detail', page: () => JobDetailScreen()),
  ];
}
