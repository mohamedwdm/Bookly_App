import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchFeaturedBooks(
      category: widget.bookModel.volumeInfo.categories![0]
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailesViewBody()));
  }
}
