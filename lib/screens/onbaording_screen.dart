import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_ui/components/custom_outline.dart';
import 'package:movie_ui/constants.dart';
import 'package:movie_ui/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Constants.kBlackColor,
        body: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.1,
                left: -88,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kPinkColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.3,
                right: -100,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kGreenColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(),
                  ),
                ),
              ),
              SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.07,
                      ),
                      CustomOutline(
                        strokeWidth: 4,
                        radius: screenWidth * 0.8,
                        padding: const EdgeInsets.all(4),
                        width: screenWidth * 0.8,
                        height: screenWidth * 0.8,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constants.kPinkColor,
                            Constants.kPinkColor.withOpacity(0.05),
                            Constants.kGreenColor.withOpacity(0.1),
                            Constants.kGreenColor,
                          ],
                          stops: const [0.2, 0.4, 0.6, 1],
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/img-onboarding.png",
                              ),
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomLeft,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.09,
                      ),
                      Text(
                        "Watch movies in \n Virtual Reality",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Constants.kWhiteColor.withOpacity(0.8),
                          fontSize: screenHeight <= 660 ? 18 : 34,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.05,
                      ),
                      Text(
                        "Download and watch offline \n wherever you are",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Constants.kWhiteColor.withOpacity(0.75),
                          fontSize: screenHeight <= 660 ? 12 : 16,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen();
                          }));
                        },
                        child: CustomOutline(
                          strokeWidth: 3,
                          radius: 20,
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor,
                              Constants.kGreenColor,
                            ],
                          ),
                          width: 160,
                          height: 38,
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            decoration: BoxDecoration(
                              // shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Constants.kPinkColor.withOpacity(0.15),
                                  Constants.kGreenColor.withOpacity(0.15),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:
                                      Constants.kWhiteColor.withOpacity(0.75),
                                  fontSize: screenHeight <= 660 ? 11 : 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return Container(
                              height: 7,
                              width: 7,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == 0
                                      ? Constants.kGreenColor
                                      : Constants.kGreyColor),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
