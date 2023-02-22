// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWithButton extends StatelessWidget {
  TextFieldWithButton(
      {super.key, required this.hintText, required this.button});
  String hintText;
  Widget button;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: <Widget>[
          button,
          Container(
            height: 30.0,
            width: 2.0,
            color: Color.fromARGB(255, 220, 220, 220).withOpacity(0.5),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
