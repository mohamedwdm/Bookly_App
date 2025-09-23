import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_detailes_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailesAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .20),
             child: const CustomBookItem(),
          ),
          const SizedBox(height: 40),
          Text("The Jungle Book", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 3),
          Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 9),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 38),
          const BooksAction(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',

              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 16),

          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
