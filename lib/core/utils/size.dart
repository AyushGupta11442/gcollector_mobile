import 'package:flutter/material.dart';

class Responsive {
  final double width;
  final double height;

  Responsive(BuildContext context)
      : width = MediaQuery.sizeOf(context).width,
        height = MediaQuery.sizeOf(context).height;

  double wp(double percent) {
    return width * percent;
  }

  double hp(double percent) {
    return height * percent;
  }
}