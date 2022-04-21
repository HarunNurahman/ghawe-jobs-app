import 'package:flutter/material.dart';
import 'package:ghawejobapp/controller/onboarding_controller.dart';
import 'package:ghawejobapp/shared/buttons.dart';
import 'package:ghawejobapp/shared/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class onBoardingScreen extends StatelessWidget {
  final _controller = onBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: _controller.pageControl,
                  onPageChanged: _controller.selectedBoard,
                  itemCount: _controller.onboardingPages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        const SizedBox(height: 30),
                        Text(
                          _controller.onboardingPages[index].textTitle,
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          _controller.onboardingPages[index].desc,
                          style: GoogleFonts.poppins(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        Obx(
                          () => _controller.isLastBoard
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 30,
                                        top: 30,
                                      ),
                                      child: SizedBox(
                                        width: 145,
                                        height: 45,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: kPrimaryColor,
                                          ),
                                          onPressed: () {
                                            Get.toNamed('/login');
                                          },
                                          child: Text(
                                            "Login".toUpperCase(),
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 30,
                                        top: 30,
                                      ),
                                      child: Container(
                                        width: 145,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: kPrimaryColor,
                                            width: 1,
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Register".toUpperCase(),
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(flex: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              _controller.onboardingPages.length,
                              (index) => Obx(
                                () {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 6),
                                    width:
                                        _controller.selectedBoard.value == index
                                            ? 16
                                            : 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: _controller.selectedBoard.value ==
                                              index
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
                          const Spacer(),
                          Obx(
                            () => _controller.isLastBoard
                                ? const Spacer()
                                : SizedBox(
                                    width: 70,
                                    height: 40,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        backgroundColor: kPrimaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: _controller.nextAction,
                                      child: Text(
                                        'next'.toUpperCase(),
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
