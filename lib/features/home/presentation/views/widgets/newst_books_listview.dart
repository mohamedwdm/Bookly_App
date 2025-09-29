import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/newst_books_cubit/newst_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newst_books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewstBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewstBooksFailure) {
          return CustomErrorWidget(errorMessege: state.errorMessege);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
