import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
/**
 * ## Project Structure and Code Organization
 *
 * When developing an application, organizing code into features is a common practice.
 * This approach helps in separating concerns, making the codebase more modular, and improving scalability.
 *
 * - **Features:** Each feature can represent one or more screens. This modularity allows for easier management and development.
 * - **Core Folder:** The `core` folder contains shared utilities, widgets, and business logic that are used across multiple features,
 *   preventing code duplication and promoting reusability.
 */
