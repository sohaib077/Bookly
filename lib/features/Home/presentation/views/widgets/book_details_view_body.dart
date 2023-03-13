import 'package:bookly/features/Home/data/model/book_model/BookModel.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_view_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.book}) : super(key: key);

  final BookModel book;
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
              children: [
                const BookDetailsViewAppBar(),
                BooksDetailsSection(book: book),
                BookActions(book: book),
                const Expanded(child: SizedBox(height: 20)),
                const SimilarBooksSection(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
