import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.white,
    required this.black,
    required this.grey,
    required this.lightGrey,
    required this.darkGrey,
    required this.error,
    required this.success,
    required this.warning,
    required this.info,
  });

  final OnColor primary;
  final OnColor secondary;
  final BrightnessOnColor background;
  final BrightnessOnColor white;
  final BrightnessOnColor black;
  final OnColor grey;
  final OnColor lightGrey;
  final OnColor darkGrey;
  final BrightnessOnColor error;
  final BrightnessOnColor success;
  final BrightnessOnColor warning;
  final BrightnessOnColor info;
}

class OnColor {
  const OnColor({
    required this.value,
    required this.onColor,
  });

  final Color value;
  final Color onColor;
}

class BrightnessOnColor {
  const BrightnessOnColor({
    required this.light,
    required this.dark,
  });

  final OnColor light;
  final OnColor dark;

  OnColor byBrightness(bool isDark) {
    return isDark ? dark : light;
  }
}
