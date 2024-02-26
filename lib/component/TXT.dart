import 'package:flutter/material.dart';

class txt extends StatelessWidget {
  txt({required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w600,
        height: 0.10,
        letterSpacing: 0.30,
      ),
    );
  }
}
