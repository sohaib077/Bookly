import 'package:bookly/core/loading_widgets/featured_book_item_shimmer.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/shared_widgets/custom_error_widget.dart';
import 'package:bookly/features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: FeaturedBookItem(
                        imageUrl: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            ' ')),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: const FeaturedBookItemShimmer(),
              ),
            ),
          );
        }
      },
    );
  }
}
