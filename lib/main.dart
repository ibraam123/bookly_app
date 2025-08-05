import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
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

