import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.23),
          child: const FeaturedBookItem(imageUrl: 'asdfk'),
        ),
        const SizedBox(height: 15),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 3),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyleSemiBold18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center , avgRating: 0 , ratings: 0 ),
        const SizedBox(height: 20),
      ],
    );
  }
}
