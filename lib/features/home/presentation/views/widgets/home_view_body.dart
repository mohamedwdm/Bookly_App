import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text('Best Seller', style: Styles.textStyle18),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.test_image),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
