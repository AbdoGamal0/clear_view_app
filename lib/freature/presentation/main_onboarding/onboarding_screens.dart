import 'dart:async';

import 'package:clear_view/core/models/onboard.dart';
import 'package:flutter/material.dart';

import 'widgets/onboarding_screen1.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});
  static String routeName = 'onboarding_screen';

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController controller = PageController();
  late Timer _timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoPageChange();
  }

  void _startAutoPageChange() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage < onboardData.length - 1) {
        currentPage++;
      } else {
        currentPage = 0; // Reset to the first page if it's the last one
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    _timer.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: onboardData.length,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          currentPage = index;
        },
        itemBuilder: (context, index) => OnboardingWidget(
          onboard: onboardData[index],
          controller: controller,
        ),
      ),
    );
  }
}
