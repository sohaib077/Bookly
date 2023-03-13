import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/model/book_model/BookModel.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key, required this.book,
  });

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.23),
          child: FeaturedBookItem(imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ' '),
        ),
        const SizedBox(height: 15),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(height: 3),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo!.authors![0],
            style: Styles.textStyleSemiBold18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 5),
        BookRating(mainAxisAlignment: MainAxisAlignment.center , avgRating: book.volumeInfo!.averageRating ?? 0, ratings: book.volumeInfo!.ratingsCount ?? 0 ),
        const SizedBox(height: 20),
      ],
    );
  }
}
