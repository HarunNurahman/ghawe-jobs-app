import 'package:get/get.dart';
import 'package:ghawejobapp/models/onboarding_content.dart';

class onBoardingController extends GetxController {
  var selectedBoard = 0.obs;

  List<onBoardingContent> onboardingPages = [
    onBoardingContent(
      'assets/images/undraw_career_progress.png',
      'Membantu Anda\nMencari Pekerjaan Impian',
      'Kembangkan diri dan tingkatkan karir anda,\n hingga mencapai pekerjaan impian anda',
    ),
    onBoardingContent(
      'assets/images/undraw_job_offers.png',
      'Pilih Pekerjaan\nSesuai Skill & Passion',
      'Ada banyak pilihan pekerjaan yang bisa\nanda sesuaikan dengan minat\ndan skill yang anda miliki',
    ),
    onBoardingContent(
      'assets/images/undraw_interview.png',
      'Gabung dan Mulai Sekarang',
      'Raih pekerjaan impian anda sekarang\ndan tingkatkan karir juga penghasilan anda!',
    ),
  ];
}
