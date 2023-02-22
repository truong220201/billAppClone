import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldTwiceWithIcon extends StatelessWidget {
  TextFieldTwiceWithIcon(
      {super.key,
      required this.firstHintText,
      required this.seccondHintText,
      required this.icon});
  String firstHintText;
  String seccondHintText;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 66, 189, 57).withOpacity(0.5),
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
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: firstHintText,
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 66, 189, 57)),
              ),
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
            margin: const EdgeInsets.only(left: 5.0, right: 5.0),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: seccondHintText,
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
