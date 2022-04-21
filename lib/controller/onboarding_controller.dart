import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghawejobapp/models/onboarding_content.dart';
import 'package:ghawejobapp/shared/constant.dart';

class onBoardingController extends GetxController {
  var selectedBoard = 0.obs;
  bool get isLastBoard => selectedBoard.value == onboardingPages.length - 1;
  var pageControl = PageController();

  nextAction() {
    if (isLastBoard) {
    } else {
      pageControl.nextPage(duration: kAnimationDuration, curve: Curves.ease);
    }
  }

  List<onBoardingContent> onboardingPages = [
    onBoardingContent(
      'assets/images/undraw_career_progress.svg',
      'Membantu Anda\nMencari Pekerjaan Impian',
      'Kembangkan diri dan tingkatkan karir anda,\n hingga mencapai pekerjaan impian anda',
    ),
    onBoardingContent(
      'assets/images/undraw_job_hunt.svg',
      'Pilih Pekerjaan\nSesuai Skill & Passion',
      'Ada banyak pilihan pekerjaan yang bisa\nanda sesuaikan dengan\n minat dan skill yang anda miliki',
    ),
    onBoardingContent(
      'assets/images/undraw_interview.svg',
      'Gabung dan\nMulai Sekarang',
      'Raih pekerjaan impian anda sekarang\ndan tingkatkan karir juga penghasilan anda!',
    ),
  ];
}
