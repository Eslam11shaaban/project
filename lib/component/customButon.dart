import 'package:flutter/material.dart';

class customboton extends StatelessWidget {
  var style;

  customboton({required this.text, this.style,});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 60,
      child: MaterialButton(
          onPressed: () { },
          child: Text(text,
            style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
            height: 0.10,
            letterSpacing: 0.30,
          ),)),
    );
  }
}
