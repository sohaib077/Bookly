import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedBookItemShimmer extends StatelessWidget {
  const FeaturedBookItemShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.indigo.shade900.withOpacity(0.2),
      highlightColor: Colors.indigo.shade500.withOpacity(0.3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
