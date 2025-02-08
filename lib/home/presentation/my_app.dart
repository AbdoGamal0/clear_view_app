import 'package:clear_view/freature/presentation/chat/presentation/chatbot.dart';
import 'package:clear_view/freature/presentation/chat/presentation/chatbot_onboarding/onboarding1_chatbot.dart';
import 'package:clear_view/freature/presentation/vision_test/onboarding_vision_test/onboarding_vision_test.dart';
import 'package:clear_view/freature/presentation/vision_test/vision_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../freature/presentation/auth/logic/cubit/auth_cubit.dart';
import '../../freature/presentation/auth/presentation/login.dart';
import '../../freature/presentation/auth/presentation/register.dart';
import '../../freature/presentation/auth/presentation/reset_password.dart';
import '../../freature/presentation/chat/presentation/chatbot_onboarding/onboarding_chatbot.dart';
import '../../freature/presentation/doctor/presentation/patients.dart';
import '../../freature/presentation/home/home_screen.dart';
import '../../freature/presentation/onboarding/onboarding_screens.dart';
import '../../freature/presentation/vision_test/onboarding_vision_test/onboarding_vision_test1.dart';
import '../../freature/presentation/vision_test/vision_test_result.dart';

class ClearView extends StatelessWidget {
  const ClearView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clear View',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OnBoarding(),
        routes: {
          OnBoarding.routeName: (context) => const OnBoarding(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          RegisterScreen.routeName: (context) => const RegisterScreen(),
          ResetPassword.routeName: (context) => const ResetPassword(),
          ChatbotOnboarding.routeName: (context) => const ChatbotOnboarding(),
          ChatbotOnboarding1.routeName: (context) => const ChatbotOnboarding1(),
          Chatbot.routeName: (context) => const Chatbot(),
          OnboardingVisionTest.routeName: (context) =>
              const OnboardingVisionTest(),
          OnboardingVisionTest1.routeName: (context) =>
              const OnboardingVisionTest1(),
          VisionTest.routeName: (context) => const VisionTest(),
          TestVisionResult.routeName: (context) => const TestVisionResult(),
          PatientsPage.routeName: (context) => const PatientsPage(),
        },
      ),
    );
  }
}
