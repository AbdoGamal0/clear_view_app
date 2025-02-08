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
  final PageController controller =
      PageController(); // Initialize the PageController

  @override
  void dispose() {
    controller.dispose(); // Dispose of the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller, // Use the controller here
        itemCount: onboardData.length,
        physics: const BouncingScrollPhysics(),
        pageSnapping: true,
        itemBuilder: (context, index) => OnboardingWidget(
          onboard: onboardData[index],
          controller: controller,
        ),
      ),
    );
  }
}
