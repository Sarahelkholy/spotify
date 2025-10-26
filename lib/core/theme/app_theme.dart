import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_colors.dart';
import 'package:spotify/core/theme/app_text_styles.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: AppTextStyles.font20WhiteBold,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: AppTextStyles.font20WhiteBold,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
      ),
    ),
  );
}
