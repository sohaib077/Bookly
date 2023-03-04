import 'package:bookly/features/Home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_view_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                BookDetailsViewAppBar(),
                BooksDetailsSection(),
                BookActions(),
                Expanded(child: SizedBox(height: 20)),
                SimilarBooksSection(),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
