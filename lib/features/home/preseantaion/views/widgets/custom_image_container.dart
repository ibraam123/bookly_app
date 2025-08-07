import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({super.key, required this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      // Return a placeholder or an empty container if the imageUrl is null or empty
      return Container(
        height: 125.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300], // Placeholder color
        ),
        child: Icon(Icons.image_not_supported, color: Colors.grey[600]),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        height: 50.h,
        width: 80.w,
        fit: BoxFit.cover,
        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}

