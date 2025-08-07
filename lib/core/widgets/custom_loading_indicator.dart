import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
        semanticsLabel: 'Circular progress indicator',
        semanticsValue: 'Circular progress indicator value',
        value: null,
        key: null,
      ),
    );
  }
}
