import 'package:flutter/material.dart';

import 'custom_seller_list_view_item.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => const CustomSellerListViewItem(),
    );
  }
}