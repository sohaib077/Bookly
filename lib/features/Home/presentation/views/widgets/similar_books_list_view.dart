import 'package:bookly/features/Home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_view_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const FeaturedBookItem( imageUrl: 'asdf'),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 20,
      ),
    );
  }
}
