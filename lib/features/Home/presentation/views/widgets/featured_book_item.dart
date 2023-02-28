import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
