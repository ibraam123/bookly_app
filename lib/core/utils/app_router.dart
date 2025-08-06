import 'package:bookly_app/features/home/preseantaion/views/book_details_view.dart';
import 'package:bookly_app/features/home/preseantaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: "/", // start screen known by /
          builder: (context, state) => const SplashView()
      ),
      GoRoute(
          path: "/home",
          builder: (context, state) => const HomeView()
      ),
      GoRoute(
          path: "/book_details",
          builder: (context, state) => const BookDetailsView()
      ),
      GoRoute(
          path: "/search",
          builder: (context, state) => const SearchView()
      ),
    ],
  );
}
