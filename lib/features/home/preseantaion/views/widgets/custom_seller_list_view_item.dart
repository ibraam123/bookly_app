import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/book_model.dart';
import 'custom_list_view_item.dart';

class CustomSellerListViewItem extends StatelessWidget {
  const CustomSellerListViewItem({super.key, required this.book});
  final BookModel book;

  String _getAuthorsText() {
    if (book.volumeInfo?.authors == null || book.volumeInfo!.authors!.isEmpty) {
      return 'Unknown Author';
    }
    return book.volumeInfo!.authors!.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/book_details", extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 115.h,
          child: Row(
            children: [
              CustomBookImage(
                noNavigate: false,
                imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                bookModel: book,
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.volumeInfo!.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      _getAuthorsText(),
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookRating(
                            rating: 4,
                            count: 250
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
