import 'package:flutter/material.dart';

import '../../../home/preseantaion/views/widgets/custom_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const CustomSellerListViewItem(),

    );
  }
}
