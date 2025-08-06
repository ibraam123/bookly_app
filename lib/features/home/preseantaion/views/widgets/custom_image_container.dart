import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(Assets.books),
          fit: BoxFit.cover, // Prevent image overflow
        ),
      ),
    );
  }
}
