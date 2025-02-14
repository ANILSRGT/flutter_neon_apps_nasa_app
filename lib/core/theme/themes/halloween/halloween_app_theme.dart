import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/theme/app_colors.dart';
import 'package:neon_apps_nasa_app/core/theme/i_app_theme.dart';

final class HalloweenAppTheme extends IAppTheme {
  @override
  AppColors get colors => const AppColors(
    primary: OnColor(value: Color(0xFFFF5722), onColor: Color(0xFFFBFBFB)),
    secondary: OnColor(value: Color(0xFF4CAF50), onColor: Color(0xFFFBFBFB)),
    background: BrightnessOnColor(
      light: OnColor(value: Color(0xFFFBFBFB), onColor: Color(0xFF1A1A1A)),
      dark: OnColor(value: Color(0xFF1A1A1A), onColor: Color(0xFFFBFBFB)),
    ),
    white: BrightnessOnColor(
      light: OnColor(value: Color(0xFFFBFBFB), onColor: Color(0xFF1A1A1A)),
      dark: OnColor(value: Color(0xFF1A1A1A), onColor: Color(0xFFFBFBFB)),
    ),
    black: BrightnessOnColor(
      light: OnColor(value: Color(0xFF1A1A1A), onColor: Color(0xFFFBFBFB)),
      dark: OnColor(value: Color(0xFFFBFBFB), onColor: Color(0xFF1A1A1A)),
    ),
    grey: OnColor(value: Color(0xFFBDBDBD), onColor: Color(0xFF1A1A1A)),
    lightGrey: OnColor(value: Color(0xFFE0E0E0), onColor: Color(0xFF1A1A1A)),
    darkGrey: OnColor(value: Color(0xFF616161), onColor: Color(0xFFFBFBFB)),
    error: BrightnessOnColor(
      light: OnColor(value: Color(0xFFD32F2F), onColor: Color(0xFFFBFBFB)),
      dark: OnColor(value: Color(0xFFA21F1F), onColor: Color(0xFFFBFBFB)),
    ),
    success: BrightnessOnColor(
      light: OnColor(value: Color(0xFF388E3C), onColor: Color(0xFFFBFBFB)),
      dark: OnColor(value: Color(0xFF2E7D32), onColor: Color(0xFFFBFBFB)),
    ),
    warning: BrightnessOnColor(
      light: OnColor(value: Color(0xFFFBC02D), onColor: Color(0xFF1A1A1A)),
      dark: OnColor(value: Color(0xFFC39C00), onColor: Color(0xFF1A1A1A)),
    ),
    info: BrightnessOnColor(
      light: OnColor(value: Color(0xFF1976D2), onColor: Color(0xFFFBFBFB)),
      dark: OnColor(value: Color(0xFF1257A5), onColor: Color(0xFFFBFBFB)),
    ),
  );

  @override
  ThemeData getThemeData(bool isDark) {
    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
      primaryColor: colors.primary.value,
      scaffoldBackgroundColor: colors.background.byBrightness(isDark).value,
      fontFamily: 'Montserrat',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 57),
        displayMedium: TextStyle(fontSize: 45),
        displaySmall: TextStyle(fontSize: 36),
        headlineLarge: TextStyle(fontSize: 32),
        headlineMedium: TextStyle(fontSize: 28),
        headlineSmall: TextStyle(fontSize: 24),
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        bodyLarge: TextStyle(fontSize: 16),
        bodyMedium: TextStyle(fontSize: 14),
        bodySmall: TextStyle(fontSize: 12),
      ).apply(
        bodyColor: colors.background.byBrightness(isDark).onColor,
        displayColor: colors.background.byBrightness(isDark).onColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary.value,
          foregroundColor: colors.primary.onColor,
          iconColor: colors.primary.onColor,
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: colors.background.byBrightness(isDark).value,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: colors.background.byBrightness(isDark).onColor,
          ),
          hintStyle: TextStyle(
            color: colors.background.byBrightness(isDark).onColor,
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.fromMap({
          WidgetState.disabled: colors.grey.value,
          WidgetState.any:
              isDark ? colors.white.light.value : colors.primary.value,
        }),
        trackColor: const WidgetStatePropertyAll(Colors.transparent),
        overlayColor: WidgetStatePropertyAll(
          (isDark ? colors.white.light.value : colors.primary.value).withValues(
            alpha: 0.5,
          ),
        ),
        trackOutlineColor: WidgetStateProperty.all(
          isDark ? colors.white.light.value : colors.primary.value,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
