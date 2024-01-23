import 'package:bookly/Features/home/widget/best_seller_list_view.dart';

import 'package:flutter/cupertino.dart';

class BestSellerListViewForBooks extends StatelessWidget {
  const BestSellerListViewForBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
