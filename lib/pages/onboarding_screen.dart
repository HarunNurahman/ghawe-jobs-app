import 'package:flutter/material.dart';
import 'package:ghawejobapp/controller/onboarding_controller.dart';
import 'package:ghawejobapp/shared/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class onBoardingScreen extends StatelessWidget {
  final controller = onBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: controller.selectedBoard,
            itemCount: controller.onboardingPages.length,
            itemBuilder: (context, index) {
              return SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.onboardingPages[index].imageAsset),
                    const SizedBox(height: 30),
                    Text(
                      controller.onboardingPages[index].textTitle,
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      controller.onboardingPages[index].desc,
                      style: GoogleFonts.poppins(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
          // Positioned(
          //   bottom: 30,
          //   child: Row(
          //     children:
          //     List.generate(
          //       controller.onboardingPages.length,
          //       (index) => Container(
          //         margin: const EdgeInsets.all(6),
          //         width: 8,
          //         height: 8,
          //         decoration: const BoxDecoration(
          //           color: Colors.grey,
          //           shape: BoxShape.circle,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            child: Column(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      controller.onboardingPages.length,
                      (index) => Obx(
                        () {
                          return Container(
                            margin: const EdgeInsets.only(right: 6),
                            width: controller.selectedBoard.value == index
                                ? 16
                                : 6,
                            height: 8,
                            decoration: BoxDecoration(
                              color: controller.selectedBoard.value == index
                                  ? kPrimaryColor
                                  : Colors.grey,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
