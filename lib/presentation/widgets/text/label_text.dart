import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    required this.title,
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
  });

  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: context.extTheme.textTheme.labelLarge?.copyWith(
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color,
      ),
    );
  }
}
