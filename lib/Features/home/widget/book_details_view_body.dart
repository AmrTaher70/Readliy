import 'package:bookly/Features/home/widget/books_action.dart';
import 'package:bookly/Features/home/widget/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            //is not response to device orientation
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const CustomBookItem(),
            ),
            const SizedBox(
              height: 43,
            ),
            Text(
              'The Jungle Book',
              style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Style.textStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.solidStar,
                  color: Color(0xffFFDD4f),
                ),
                const SizedBox(
                  width: 6.3,
                ),
                const Text(
                  '4.8',
                  style: Style.textStyle16,
                ),
                const SizedBox(
                  width: 6.3,
                ),
                Text(
                  '(2346)',
                  style: Style.textStyle14
                      .copyWith(color: const Color(0xff707070)),
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            const BooksAction(),
          ],
        ),
      ),
    );
  }
}
