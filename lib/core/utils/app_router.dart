import 'package:bookly/Features/home/view/home_screen.dart';
import 'package:bookly/Features/home/widget/book_details_view.dart';
import 'package:bookly/Features/splash/splashscreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/HomeScreen';
  static const kBookDetailsScreen = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
