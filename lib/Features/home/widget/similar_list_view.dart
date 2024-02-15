import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemCount: 50,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CustomBookItem(
                imageUrl:
                    'https://web.facebook.com/photo/?fbid=24643286658649944&set=a.104644326274185'),
          );
        },
      ),
    );
  }
}
