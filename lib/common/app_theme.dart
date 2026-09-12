import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme=ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkBlue),
  scaffoldBackgroundColor: AppColors.darkBlue,

  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBlue,
     
  ),
  );
}