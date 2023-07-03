import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey/theme/app_theme.dart';

import 'core/app/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      initialRoute: "/onboarding",
      theme: AppThemes.dark,
    ),
  );
}
