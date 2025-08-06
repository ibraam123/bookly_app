import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w ),
            child: CustomBookImage(),
          ),
          const SizedBox(height: 20),
          Text("The Jungle Book" , style: Styles.textStyle30,),
          const SizedBox(height: 4),
          Text("okay i am harry" , style: Styles.textStyle18,),
          const SizedBox(height: 15),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
