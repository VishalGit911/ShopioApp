import 'package:flutter/material.dart';

import '../../../model/onboarding_model.dart';
import '../../../route/project_route.dart';
import 'indicator.dart';
import 'onboarding_comman.dart';

class OnBoardingBodyScreen extends StatefulWidget {
  const OnBoardingBodyScreen({super.key});

  @override
  State<OnBoardingBodyScreen> createState() => _OnBoardingBodyScreenState();
}

class _OnBoardingBodyScreenState extends State<OnBoardingBodyScreen> {
  int selectindex = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  onPageChanged: (value) {
                    setState(() {
                      selectindex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return onBoardingCommonScreen(
                        onboardingdata[index].image,
                        onboardingdata[index].title,
                        onboardingdata[index].Decsription);
                  },
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    onBoardingContainer(selectindex),
                    FloatingActionButton(
                      backgroundColor: Colors.blue.shade800,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          if (selectindex < onboardingdata.length - 1) {
                            selectindex++;
                            pageController.animateToPage(selectindex,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.fastLinearToSlowEaseIn);
                          } else {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoute.signin,
                              (route) => false,
                            );
                          }
                        });
                      },
                      child: const Icon(
                        Icons.navigate_next,
                        size: 40,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
