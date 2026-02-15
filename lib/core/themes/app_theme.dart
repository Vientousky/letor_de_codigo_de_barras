import 'package:codigo_de_barras/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: AppColors.lightBackground,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBackgroundComponents,
      foregroundColor: AppColors.lightTextPrimary,
    ),

    colorScheme: ColorScheme.light(
      primary: AppColors.lightTextPrimary,
      secondary: AppColors.lightTextSecundary,
      surface: AppColors.lightBackgroundComponents,
      surfaceContainerHighest: AppColors.lightBackgroundSelected,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.darkBackground,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackgroundComponents,
      foregroundColor: AppColors.darkTextPrimary,
    ),

    colorScheme: ColorScheme.dark(
      primary: AppColors.darkTextPrimary,
      secondary: AppColors.darkTextSecundary,
      surface: AppColors.darkBackgroundComponents,
      surfaceContainerHighest: const Color.fromARGB(255, 111, 114, 114),
    ),
  );
}
