import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/Features/home/view/home_screen.dart';
import 'package:bookly/Features/home/widget/book_details_view.dart';
import 'package:bookly/Features/presentation/manger/features/similar_books/presentation/similar_books/similar_books_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widget/search_view.dart';
import 'package:bookly/Features/splash/splashscreen.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/HomeScreen';
  static const kBookDetailsScreen = '/BookDetailsView';
  static const kSearchScreen = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
