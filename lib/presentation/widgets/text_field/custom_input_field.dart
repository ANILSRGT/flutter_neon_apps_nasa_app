import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';
import 'package:neon_apps_nasa_app/core/extensions/radius_app_double_values_extension.dart';
import 'package:neon_apps_nasa_app/core/extensions/theme_context_extension.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField({
    required this.controller,
    required this.hint,
    required this.keyboardType,
    required this.textInputAction,
    super.key,
    this.obscureText = false,
    this.inputFormatters,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.focusNode,
    this.nextFocusNode,
    this.readOnly = false,
    this.onTap,
  });

  final TextEditingController controller;
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String value)? onChanged;
  final bool readOnly;
  final void Function()? onTap;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (_) {
        widget.focusNode?.unfocus();
        FocusScope.of(context).unfocus();
      },
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      inputFormatters: widget.inputFormatters,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      onSubmitted: (_) {
        if (widget.nextFocusNode != null) {
          FocusScope.of(context).requestFocus(widget.nextFocusNode);
        }
      },
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderRadius: AppDoubleValues.md.extRadius.border.all,
          borderSide: BorderSide(
            color:
                context.appThemeExt.appColors.black
                    .byBrightness(context.extTheme.isDark)
                    .value,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: AppDoubleValues.md.extRadius.border.all,
          borderSide: BorderSide(
            color:
                context.appThemeExt.appColors.error
                    .byBrightness(context.extTheme.isDark)
                    .value,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppDoubleValues.md.extRadius.border.all,
          borderSide: BorderSide(
            color: context.appThemeExt.appColors.primary.value,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppDoubleValues.md.extRadius.border.all,
          borderSide: BorderSide(
            color:
                context.appThemeExt.appColors.black
                    .byBrightness(context.extTheme.isDark)
                    .value,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: AppDoubleValues.md.extRadius.border.all,
          borderSide: BorderSide(
            color: context.appThemeExt.appColors.grey.value,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppDoubleValues.md.extRadius.border.all,
          borderSide: BorderSide(
            color:
                context.appThemeExt.appColors.error
                    .byBrightness(context.extTheme.isDark)
                    .value,
          ),
        ),
      ),
    );
  }
}
