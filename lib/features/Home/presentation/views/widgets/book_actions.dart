import 'package:bookly/core/utils/shared_functions/custom_launch_url.dart';
import 'package:bookly/core/utils/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../data/model/book_model/BookModel.dart';

class BookActions extends StatelessWidget {
  final BookModel book;

  const BookActions({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
           Expanded(
            child: CustomButton(
              text: 'FREE',
              topLeft: 16,
              bottomLeft: 16,
              onPressed: (){},
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                customLaunchUrl(book.volumeInfo!.previewLink!, context);
              },
              text: 'preview',
              topRight: 16,
              bottomRight: 16,
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
