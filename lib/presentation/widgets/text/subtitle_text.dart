import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    required this.title,
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
    this.indent = 0,
  });

  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final int indent;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${'\t' * indent}$title',
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: context.extTheme.textTheme.titleMedium?.copyWith(
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color,
      ),
    );
  }
}
