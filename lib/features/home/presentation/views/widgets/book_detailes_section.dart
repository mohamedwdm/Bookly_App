import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child:  CustomBookItem(
            imageUrl:
                book.volumeInfo.imageLinks?.thumbnail ?? ''
          ),
        ),
        const SizedBox(height: 40),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 3),
        Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 9),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 38),
         BooksAction(book: book,),
      ],
    );
  }
}
