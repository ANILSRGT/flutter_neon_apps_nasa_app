import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgColorMapper extends ColorMapper {
  const SvgColorMapper({
    required this.fromColor,
    required this.toColor,
  });

  final Color fromColor;
  final Color toColor;

  @override
  Color substitute(
      String? id, String elementName, String attributeName, Color color) {
    return color == fromColor ? toColor : color;
  }
}
