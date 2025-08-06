import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/similar_box_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'box_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                child: const CustomBookImage(),
              ),
              SizedBox(height: 10.h),
              Text(
                "The Jungle Book", // Replace with localization or dynamic data
                style: Styles.textStyle30,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.h),
              Text(
                "okay I am Harry", // Replace with localization or dynamic data
                style: Styles.textStyle18,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center),
              SizedBox(height: 30.h),
              const BooksAction(),
              SizedBox(height: 40.h),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like", // Replace with localization
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              const CustomListViewItemBookDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
