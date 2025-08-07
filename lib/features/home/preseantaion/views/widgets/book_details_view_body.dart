import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/similar_box_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'box_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

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
                child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ,
                  bookModel: bookModel,
                  noNavigate: true,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                bookModel.volumeInfo?.title ?? "No Title", // Replace with localization or dynamic data,
                style: Styles.textStyle30,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.h),
              Text(
                bookModel.volumeInfo!.authors![0], // Replace with localization or dynamic data
                style: Styles.textStyle16,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center, rating:4, count: 250,),
              SizedBox(height: 30.h),
              BooksAction(
                bookModel: bookModel,
              ),
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
