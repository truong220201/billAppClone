import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWithIcon extends StatelessWidget {
  TextFieldWithIcon(
      {super.key, required this.hintText, required this.icon, this.controller});
  String hintText;
  Icon icon;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 97, 235, 55).withOpacity(0.5),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: icon,
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
            margin: const EdgeInsets.only(left: 00.0, right: 10.0),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 66, 189, 57)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
