import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: CustomBookItem(
                    imageUrl:
                        'https://thumbs.dreamstime.com/b/brown-closed-book-illustration-vector-format-43259765.jpg',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBookFailure) {
          return CustomErrorWidget(errorMessege: state.errorMessege);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
