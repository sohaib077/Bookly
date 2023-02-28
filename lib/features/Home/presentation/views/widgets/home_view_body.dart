import 'package:bookly/features/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.only(top: 50.h , right: 10.w , left: 10.w),
          child: Text(
              'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
