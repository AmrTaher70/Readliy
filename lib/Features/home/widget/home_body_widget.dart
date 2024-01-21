import 'package:bookly/Features/home/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/widget/featured_books_list_view.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Style.titleMedium,
          )
        ],
      ),
    );
  }
}
