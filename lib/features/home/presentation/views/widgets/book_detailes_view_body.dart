import 'package:bookly_app/features/home/presentation/views/widgets/book_detailes_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_detailes_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailesAppBar(),

                BooksDetailsSection(),

                Expanded(child: SizedBox(height: 50)),
                SimilarBoxSection(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
