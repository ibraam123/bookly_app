import 'package:flutter/material.dart';


class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key , this.onSubmitted});
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: const InputDecoration(
        hintText: "Search",
        suffixIcon: Icon(Icons.search, size: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2.5,
          ),
        ),
      ),
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
      autocorrect: false,
      enableSuggestions: false,
      autofocus: false,
      showCursor: true,
    );
  }
}
