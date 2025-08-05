import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          SizedBox(width: 3.w),
          Text(
              '4.8',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold)
          ),
          SizedBox(width: 10.w),
          Text(
              '(239)',
              style: Styles.textStyle14
          ),
        ]
    );
  }
}
