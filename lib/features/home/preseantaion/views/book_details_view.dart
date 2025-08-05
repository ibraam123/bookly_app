import 'package:bookly_app/features/home/preseantaion/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconActionButton: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart ,size: 30 , color:  Colors.white, )),
        showImage: false,
        iconLeading: IconButton(onPressed: (){}, icon: Icon(Icons.close_outlined ,size: 30 , color:  Colors.white, )),
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
