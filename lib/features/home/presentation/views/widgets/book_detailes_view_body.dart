import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_detailes_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: const CustomBookItem(),
          ),
          const SizedBox(height: 45),
           Text("The Jungle Book", style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
           Text("Rudyard Kipling", style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic , fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
