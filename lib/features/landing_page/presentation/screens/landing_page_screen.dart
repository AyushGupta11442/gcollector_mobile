import 'package:flutter/material.dart';
import 'package:gcollector_mobile/core/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  Future<void> _continue(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seen_onboarding', true);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient, 
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.flutter_dash,
                size: 120,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              const Text(
                "Turn Waste Into Wealth",
                style: AppTheme.LandingPageTitle,
              ),
              const SizedBox(height: 12),
              const Text(
                "Get instant cash for your recyclable scrap",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: const Text(
                  "Join our community of eco-conscious individuals and businesses, and start earning money while helping the environment.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _continue(context),
                child: const Text("Get Started"),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}