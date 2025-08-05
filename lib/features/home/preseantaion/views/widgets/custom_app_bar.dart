import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.iconActionButton, this.iconLeading, required this.showImage});
  final IconButton iconActionButton;
  final IconButton? iconLeading;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: showImage ? Image.asset(Assets.logo, height: 20.h) : null,
      actions: [
        iconActionButton,
      ],
      leading: iconLeading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.h);
}
