import 'package:bookly/core/utils/shared_widgets/custom_error_widget.dart';
import 'package:bookly/features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_view_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/styles.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess) {
      return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FeaturedBookItem( imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? ' '),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: state.books.length,
      ),
    );
    }else if(state is SimilarBooksFailure){
      return CustomErrorWidget(errMessage: state.errMessage);
    }else{
      return const Center(child: CircularProgressIndicator());
    }
  },
);
  }
}
