import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () async{
                Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
                if(await canLaunchUrl(uri)){
                  await launchUrl(uri);
                }
              },
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: "Read",
              fontSize: 16,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(
                0xffEF8262,
              ),
              textColor: Colors.white,
              text: "Free Preview",
              fontSize: 16,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
