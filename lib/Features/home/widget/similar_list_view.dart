import 'package:bookly/Features/home/widget/custom_list_view_item.dart';
import 'package:bookly/Features/presentation/manger/features/similar_books/presentation/similar_books/similar_books_cubit.dart';
import 'package:bookly/core/utils/widget/custom_error_widget.dart';
import 'package:bookly/core/utils/widget/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
