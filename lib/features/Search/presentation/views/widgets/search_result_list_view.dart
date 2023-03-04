import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        // shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, state) => const BestSellerListViewItem(),
        separatorBuilder: (context, state) => const SizedBox(height: 20),
        itemCount: 10,
      ),
    );
  }
}
