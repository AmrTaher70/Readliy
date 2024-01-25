import 'package:bookly/Features/home/widget/best_seller_list_view_for_books.dart';
import 'package:bookly/Features/search/presentation/views/widget/custom_text_filed.dart';
import 'package:bookly/Features/search/presentation/views/widget/search_result_list_view.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFiled(),
            SizedBox(
              height: 15,
            ),
            Text(
              'Result',
              style: Style.textStyle18,
            ),
            SearchResultListView()
          ],
        ),
      ),
    );
  }
}
