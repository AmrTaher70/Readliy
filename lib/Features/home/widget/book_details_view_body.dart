import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/widget/book_details_section.dart';
import 'package:bookly/Features/home/widget/books_action.dart';
import 'package:bookly/Features/home/widget/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:bookly/Features/home/widget/similar_list_view.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  //is not response to device orientation
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: width * .2),
                  //   child: const CustomBookItem(
                  //       imageUrl:
                  //           'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
                  // ),
                  // const SizedBox(
                  //   height: 43,
                  // ),
                  // Text(
                  //   'The Jungle Book',
                  //   style:
                  //       Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
                  // ),
                  // const SizedBox(
                  //   height: 7,
                  // ),
                  // Opacity(
                  //   opacity: .7,
                  //   child: Text(
                  //     'Rudyard Kipling',
                  //     style: Style.textStyle18.copyWith(
                  //       fontWeight: FontWeight.w500,
                  //       fontStyle: FontStyle.italic,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 18,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Icon(
                  //       FontAwesomeIcons.solidStar,
                  //       color: Color(0xffFFDD4f),
                  //     ),
                  //     const SizedBox(
                  //       width: 6.3,
                  //     ),
                  //     const Text(
                  //       '4.8',
                  //       style: Style.textStyle16,
                  //     ),
                  //     const SizedBox(
                  //       width: 6.3,
                  //     ),
                  //     Text(
                  //       '(2346)',
                  //       style: Style.textStyle14
                  //           .copyWith(color: const Color(0xff707070)),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 48,
                  ),
                  BookDetailsSection(
                    book: bookModel,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: Style.textStyle16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SimilarListView(),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
