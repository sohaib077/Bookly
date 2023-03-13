import 'package:bookly/core/loading_widgets/custom_shimmer_container.dart';
import 'package:bookly/core/loading_widgets/featured_book_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/styles.dart';

class NewestBooksListItemShimmer extends StatelessWidget {
  const NewestBooksListItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: const FeaturedBookItemShimmer(),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const CustomShimmerContainer(),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: const CustomShimmerContainer(),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      'free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: const CustomShimmerContainer(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
