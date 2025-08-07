import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../data/models/book_model.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl, required this.bookModel, required this.noNavigate});
  final String? imageUrl;
  final BookModel? bookModel;
  final bool noNavigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!noNavigate) {
          GoRouter.of(context).push("/book_details", extra: bookModel);
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) =>
                const Icon(Icons.error, color: Colors.grey),
            placeholder: (context, url) => const CustomLoadingIndicator(),
            width: double.infinity,
            height: double.infinity,
            alignment: FractionalOffset.topCenter,
            fadeInDuration: const Duration(milliseconds: 100),
            fadeOutDuration: const Duration(milliseconds: 100),
            useOldImageOnUrlChange: true,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
