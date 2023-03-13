import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.avgRating,
      required this.ratings});

  final MainAxisAlignment mainAxisAlignment;
  final num avgRating;
  final num ratings;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          avgRating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '($ratings)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xffFFFFFF).withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
