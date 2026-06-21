// app.dart


// Global app configuration.

// Responsibilities

// ✅ MaterialApp
// ✅ themes
// ✅ router
// ✅ dark mode
// ✅ localization

// import 'package:flutter/material.dart';

// import 'routes/app_router.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,

//       title: 'GCollector',

//       theme: ThemeData(
//         useMaterial3: true,
//       ),

//       routerConfig: appRouter,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gcollector_mobile/features/landing_page/presentation/screens/landing_page_screen.dart';

class MyApp extends StatelessWidget {
  final bool seenOnboarding;

  const MyApp({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: seenOnboarding
          ? const HomeScreen()
          : const OnboardingScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}