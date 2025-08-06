import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key , this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
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
          SizedBox(width: 8.w),
          Text(
              '(239)',
              style: Styles.textStyle14
          ),
        ]
    );
  }
}
