import 'package:flutter/material.dart';
import 'package:gcollector_mobile/features/Home_page/presentation/widgets/welcome_txt.dart'
    show HomeViewPersonalInfo;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(children: [HomeViewPersonalInfo(PersonName: "Ayush")]),
        ),
      ),
    );
  }
}
