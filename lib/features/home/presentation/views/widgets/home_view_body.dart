import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newst_books_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Newst Books',
                  style: Styles.textStyle18.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
