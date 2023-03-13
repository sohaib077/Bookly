import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      // child: ListView.separated(
      //   // shrinkWrap: true,
      //   physics: const BouncingScrollPhysics(),
      //   padding: EdgeInsets.zero,
      //   itemBuilder: (context, index) => const BestSellerListViewItem(),
      //   separatorBuilder: (context, index) => const SizedBox(height: 20),
      //   itemCount: 10,
      // ),
      child: Text('search'),
    );
  }
}
