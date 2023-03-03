import 'package:bookly/core/utils/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              topLeft: 16,
              bottomLeft: 16,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              topRight: 16,
              bottomRight: 16,
              backGroundColor: Color(0xffEF8262),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
