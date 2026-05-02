import 'package:flutter/material.dart';
import 'package:news/src/core/const/colors/app_colors.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(primary: AppColors.primary),
  );

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Color(0XFF161F28),
    colorScheme: ColorScheme.dark(primary: AppColors.wight),
  );
}