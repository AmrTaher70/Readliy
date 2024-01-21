import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12),
            child: CustomListViewItem(),
          );
        },
      ),
    );
  }
}
