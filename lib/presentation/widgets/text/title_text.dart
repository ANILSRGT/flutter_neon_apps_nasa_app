import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    required this.title,
    super.key,
    this.color,
    this.textAlign,
  });

  final String title;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: context.extTheme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
