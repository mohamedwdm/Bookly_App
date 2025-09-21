import 'package:bookly_app/features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeView = "/homeView";
  static const kBookDetailesView = "/bookDetailesView";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),

      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kBookDetailesView, builder: (context, state) => const BookDetailesView()),
    ],
  );
}
