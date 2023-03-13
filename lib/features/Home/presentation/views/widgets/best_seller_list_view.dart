import 'package:bookly/core/loading_widgets/newest_books_list_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/shared_widgets/custom_error_widget.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) =>
                BestSellerListViewItem(book: state.books[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: 20,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => const NewestBooksListItemShimmer(),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            );
        }
      },
    );
  }
}
