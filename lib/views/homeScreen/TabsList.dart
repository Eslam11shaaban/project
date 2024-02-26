import 'package:flutter/material.dart';

class TabsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 42,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.5, color: Color(0xFFE2E8F0)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'ALL',
                  style: TextStyle(
                    color: Color(0xFF121826),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 42,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.5, color: Color(0xFFE2E8F0)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'House',
                  style: TextStyle(
                    color: Color(0xFF121826),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 42,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.5, color: Color(0xFFE2E8F0)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'House',
                  style: TextStyle(
                    color: Color(0xFF121826),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 42,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.5, color: Color(0xFFE2E8F0)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'House',
                  style: TextStyle(
                    color: Color(0xFF121826),
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
