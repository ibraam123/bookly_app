import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../view_model/similer_books_cubit/similar_books_cubit.dart';
import 'custom_image_container.dart';

class CustomListViewItemBookDetails extends StatelessWidget {
  const CustomListViewItemBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: 90.h,
            child: ListView.separated(
              padding: EdgeInsets.only(right: 5.w),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(), // Use BouncingScrollPhysics for a more natural scroll
              itemCount: state.books.length, // Ensure itemCount is set
              separatorBuilder: (context, index) => SizedBox(width: 10.w), // Add spacing between items
              itemBuilder: (context, index) {
                return CustomImageContainer(
                  imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail,
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          // Display an error message if fetching similar books fails
          return Center(child: Text(state.errMessage));
        } else {
          // Display a loading indicator while fetching data
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}