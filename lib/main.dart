// ONLY app initialization.

// Responsibilities
// ✅ Start app
// ✅ Initialize Firebase
// ✅ Initialize services
// ✅ Wrap ProviderScope

import 'package:flutter/material.dart';
import 'package:gcollector_mobile/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final seenOnboarding = prefs.getBool('seen_onboarding') ?? false;

  runApp(MyApp(seenOnboarding: seenOnboarding));
}
// void main() {
//   runApp(
//     const ProviderScope(
//       child: MyApp(),
//     ),
//   );
// }

/// ----------------------
/// PROVIDERS
/// ----------------------

// final counterProvider = StateProvider<int>((ref) => 0);

/// ----------------------
/// APP
/// ----------------------

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Riverpod App',
//       theme: ThemeData(
//         colorSchemeSeed: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

/// ----------------------
/// HOME SCREEN
/// ----------------------

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // Watch provider

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Riverpod Counter'),
//       ),
//       body: Scaffold(
//         body: LandingPageScreen(),
//       )
//     );
//   }
// }