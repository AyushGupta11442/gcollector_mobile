import 'package:flutter/material.dart';

class Todaysprice extends StatelessWidget {
  const Todaysprice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Today's Price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 16,
                color: Colors.green,
              ),
              Text("Live",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}