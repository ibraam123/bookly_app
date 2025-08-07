import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementaion.dart';
import 'package:bookly_app/features/home/preseantaion/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/preseantaion/view_model/newes_books_cubit/newes_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/preseantaion/view_model/similer_books_cubit/similar_books_cubit.dart';
import 'features/search/view_model/search_cubit.dart'; // ✅ Correct import

void main() {
  setupServiceLocator();
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
      child: MultiBlocProvider(
        providers: [
          // ✅ Correct provider initialization
          BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                  ..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
          ),
          BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => SearchCubit(getIt.get<HomeRepoImpl>()),
          ),
        ],
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
      ),
    );
  }
}
