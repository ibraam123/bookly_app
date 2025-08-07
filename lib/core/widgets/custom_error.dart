import 'package:flutter/material.dart';
class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage , style: TextStyle(
      color: Colors.red,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),);
  }
}
