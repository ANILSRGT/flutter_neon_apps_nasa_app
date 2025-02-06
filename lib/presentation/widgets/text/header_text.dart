import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    required this.text,
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: context.extTheme.textTheme.headlineMedium?.copyWith(
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color,
      ),
    );
  }
}
