import 'package:bookly/Features/home/widget/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          //is not response to device orientation
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .35),
            child: const CustomBookItem(),
          ),
        ],
      ),
    );
  }
}
