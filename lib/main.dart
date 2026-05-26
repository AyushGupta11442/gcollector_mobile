// ONLY app initialization.

// Responsibilities
// ✅ Start app
// ✅ Initialize Firebase
// ✅ Initialize services
// ✅ Wrap ProviderScope

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gcollector_mobile/features/landing_page/presentation/screens/landing_page_screen.dart';
import 'package:hooks_riverpod/legacy.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

/// ----------------------
/// PROVIDERS
/// ----------------------

final counterProvider = StateProvider<int>((ref) => 0);

/// ----------------------
/// APP
/// ----------------------

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Riverpod App',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

/// ----------------------
/// HOME SCREEN
/// ----------------------

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch provider
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter'),
      ),
      body: Scaffold(
        body: LandingPageScreen(),
      )
    );
  }
}