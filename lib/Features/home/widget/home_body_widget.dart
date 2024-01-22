import 'dart:collection';

import 'package:bookly/Features/home/widget/best_seller_list_view.dart';
import 'package:bookly/Features/home/widget/best_seller_list_view_for_books.dart';
import 'package:bookly/Features/home/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/widget/featured_books_list_view.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Style.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListViewForBooks(),
        )),
      ],
    );
  }
}
