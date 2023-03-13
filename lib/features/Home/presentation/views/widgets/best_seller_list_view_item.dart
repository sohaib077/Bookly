import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/shared_widgets/custom_error_widget.dart';
import 'package:bookly/features/Home/data/model/book_model/BookModel.dart';
import 'package:bookly/features/Home/presentation/views/widgets/best_seller_book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: book);
        },
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.17,
              child: FeaturedBookItem(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ' '),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo!.title.toString(),
                      style: Styles.textStyle20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xffFFFFFF).withOpacity(0.7),
                    ),
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
                      BookRating(avgRating: book.volumeInfo?.averageRating ?? 0 , ratings: book.volumeInfo?.ratingsCount ?? 0),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
