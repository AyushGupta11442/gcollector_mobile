// app.dart


// Global app configuration.

// Responsibilities

// ✅ MaterialApp
// ✅ themes
// ✅ router
// ✅ dark mode
// ✅ localization

import 'package:flutter/material.dart';
import 'package:gcollector_mobile/features/Home_page/presentation/screens/Home_page_screen.dart';
import 'package:gcollector_mobile/features/landing_page/presentation/screens/landing_page_screen.dart';

class MyApp extends StatelessWidget {
  final bool seenOnboarding;

  const MyApp({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const OnboardingScreen()
       home: seenOnboarding
            ? const HomeScreen()
            : const OnboardingScreen(),
    );
  }
}
