import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../freature/presentation/chat/presentation/chatbot.dart';

Future<void> completeOnboarding(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('hasSeenOnboarding', true); // حفظ الحالة
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const Chatbot()),
  );
}
