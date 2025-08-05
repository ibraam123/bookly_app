import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: const DecorationImage(
            image: AssetImage(Assets.books),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
