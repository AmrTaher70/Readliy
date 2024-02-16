import 'package:bookly/Features/home/widget/best_seller_list_view.dart';
import 'package:bookly/Features/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly/core/utils/widget/custom_error_widget.dart';
import 'package:bookly/core/utils/widget/custom_loading_indicator.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewForBooks extends StatelessWidget {
  const BestSellerListViewForBooks({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height *
                0.8, // Adjust height as needed
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
