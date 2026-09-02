import 'package:flutter/material.dart';

class YourImpact extends StatelessWidget {
  const YourImpact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Your Impact",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8),
          Icon(Icons.nature, size: 16, color: Colors.green),
        ],
      ),
    );
  }
}
