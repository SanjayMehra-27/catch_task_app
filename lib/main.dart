import 'package:catch_task_app/app/routes/app_pages.dart';
import 'package:catch_task_app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: AppThemes.defaultTheme,
      debugShowCheckedModeBanner: false,
      title: "Catch-Task App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
