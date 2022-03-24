import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final defaultTheme  = ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.appPrimaryColor,
          secondary: AppColors.colorPrimarySwatch,
        ),
      );
} 