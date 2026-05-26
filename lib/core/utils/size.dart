
import 'package:flutter/material.dart';


class Responsive {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double wp(BuildContext context, double percent) {
    return width(context) * percent;
  }

  static double hp(BuildContext context, double percent) {
    return height(context) * percent;
  }
}