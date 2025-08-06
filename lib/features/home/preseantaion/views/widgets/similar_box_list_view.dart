import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_image_container.dart';

class CustomListViewItemBookDetails extends StatelessWidget {
  const CustomListViewItemBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomImageContainer(),
      ),
    );
  }
}
