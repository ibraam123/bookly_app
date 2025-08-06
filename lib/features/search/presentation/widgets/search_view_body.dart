import 'package:bookly_app/features/search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'custom_search_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 20),
          Text('Search Result' , style: Styles.textStyle18),
          const SizedBox(height: 10),
          const Expanded(child: SearchResultListView()),
        ]
      ),
    );
  }
}

