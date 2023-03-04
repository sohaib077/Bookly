import 'package:bookly/features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const CustomSearchTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              'Search Result',
              style: Styles.textStyleSemiBold18,
            ),
          ),
          const SearchResultListView(),
        ],
      ),
    );
  }
}
