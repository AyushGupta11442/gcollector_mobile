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

// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({super.key});

//   Future<void> _continue(BuildContext context) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('seen_onboarding', true);

//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (_) => const HomeScreen(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           gradient: AppTheme.primaryGradient, 
//         ),
//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(
//                 Icons.flutter_dash,
//                 size: 120,
//                 color: Colors.white,
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 "Turn Waste Into Wealth",
//                 style: AppTheme.LandingPageTitle,
//               ),
//               const SizedBox(height: 12),
//               const Text(
//                 "Get instant cash for your recyclable scrap",
//                 style: TextStyle(
//                   color: Colors.white70,
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                 child: const Text(
//                   "Join our community of eco-conscious individuals and businesses, and start earning money while helping the environment.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black87,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 40),
//               ElevatedButton(
//                 onPressed: () => _continue(context),
//                 child: const Text("Get Started"),
//               ),
            
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class OnboardingData {
  final IconData icon;
  final String title;
  final String description;

  OnboardingData({
    required this.icon,
    required this.title,
    required this.description,
  });
}

final pages = [
  OnboardingData(
    icon: Icons.recycling,
    title: "Turn Waste Into Wealth",
    description:
        "Sell recyclable scrap and earn money from items you no longer need.",
  ),
  OnboardingData(
    icon: Icons.location_on,
    title: "Schedule Pickup",
    description:
        "Book a pickup from your home and our partners will collect the scrap.",
  ),
  OnboardingData(
    icon: Icons.eco,
    title: "Help The Environment",
    description:
        "Reduce waste and contribute towards a cleaner and greener future.",
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int currentPage = 0;

  Future<void> finishOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seen_onboarding', true);

    if (!mounted) return;

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
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final page = pages[index];

                    return Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            page.icon,
                            size: 120,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 30),
                          Text(
                            page.title,
                            textAlign: TextAlign.center,
                            style: AppTheme.LandingPageTitle,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            page.description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              /// Dots Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pages.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: currentPage == index ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentPage == pages.length - 1) {
                        finishOnboarding();
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      currentPage == pages.length - 1
                          ? "Get Started"
                          : "Next",
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}