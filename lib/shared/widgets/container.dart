// this contain box widget with txt 

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final double widthPercent;
  final double heightPercent;
  final Widget child;
  final Color color;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  const ResponsiveContainer({
    super.key,
    required this.widthPercent,
    required this.heightPercent,
    required this.child,
    this.color = Colors.blue,
    this.borderRadius = 20,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * widthPercent,
      height: screenHeight * heightPercent,

      padding: padding ?? const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),

      child: child,
    );
  }
}