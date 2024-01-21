import 'package:bookly/Features/home/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/widget/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
