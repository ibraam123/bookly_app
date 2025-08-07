import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/similer_books_cubit/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo!.categories![0],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconActionButton: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart ,size: 30 , color:  Colors.white, )),
        showImage: false,
        iconLeading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close_outlined ,size: 30 , color:  Colors.white, )),
      ),
      body: BookDetailsViewBody(
        bookModel: widget.bookModel ,
      ),
    );
  }
}
