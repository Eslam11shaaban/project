import 'package:flutter/material.dart';

class categoriesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        child: Stack(
          children: [
            // صورة الخلفية
            Image.asset(
              'assets/images/eng.jpeg',
              width: 296,
              height: 119,
              fit: BoxFit.cover,
            ),
            // النص في الأمام
            Positioned(
              top: 10,
              left: 10,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dream Home',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'For Sale',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        '\$250,000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'House',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/house.jpeg',
                    width: 150,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
