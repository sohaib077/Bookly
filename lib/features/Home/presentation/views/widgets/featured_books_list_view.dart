import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: const FeaturedBookItem(),
        ),
      ),
    );
  }
}
