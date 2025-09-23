
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class SimilarBoxSection extends StatelessWidget {
  const SimilarBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
