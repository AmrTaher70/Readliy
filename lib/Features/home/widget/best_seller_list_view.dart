import 'package:bookly/Features/home/widget/book_rating.dart';
import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/models/book_model/book_model.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kBookDetailsScreen, extra: bookModel);
      },
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            CustomBookItem(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(16),
            //           color: Colors.blue,
            //           image: const DecorationImage(
            //               image: AssetImage(
            //                 AssetsData.testBook,
            //               ),
            //
            //             fit: BoxFit.fill))),

            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Style.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(bookModel.volumeInfo.authors![0],
                      style: Style.textStyle14),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Text('Free', style: Style.textStyle20),
                      const Spacer(),
                      BookRating(
                        rating:
                            bookModel.volumeInfo.averageRating?.round() ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
