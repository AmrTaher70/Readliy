import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:bookly/Features/presentation/manger/features/feature_books/presentation/feature_books/feature_books_cubit.dart';
import 'package:bookly/core/utils/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/widget/custom_error_widget.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                String imageUrl =
                    state.books[index].volumeInfo.imageLinks?.thumbnail ?? '';
                // Check if imageUrl is empty or null
                if (imageUrl.isEmpty) {
                  // Provide a placeholder or handle the error
                  return const Placeholder(); // Placeholder widget as a fallback
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: CustomBookItem(
                    imageUrl: imageUrl,
                  ),
                );
              },
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
