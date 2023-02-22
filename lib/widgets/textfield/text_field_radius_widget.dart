import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFieldRadius extends StatelessWidget {
  CustomTextFieldRadius({super.key, required this.hintText});
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
