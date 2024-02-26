import 'package:flutter/material.dart';

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 300,
      padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Color(0xFFE2E8F0)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 146,
                height: 146,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: 240,
                        height: 152,
                        child: Image.asset(
                          'assets/images/Photo 1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Container(
                        width: 20,
                        height: 20,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: OvalBorder(),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19121212),
                                      blurRadius: 10,
                                      offset: Offset(4, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: -1,
                              top: 2,
                              child: Container(
                                width: 16,
                                height: 16,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.33, vertical: 1.33),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 11.33,
                                      height: 13.33,
                                      child: Icon(
                                        Icons.shield_sharp,
                                        size: 18,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ), //الاولي تمااام
              Positioned(
                bottom: 1,
                right: 1,
                child: InkWell(
                  onTap: () {
                    print('love');
                  },
                  child: Container(
                    width: 40,
                    height: 32,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19121212),
                          blurRadius: 16,
                          offset: Offset(4, 4),
                          spreadRadius: 4,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: 15.83,
                            height: 20,
                            child:
                                Icon(Icons.favorite_sharp, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 146,
            height: 120,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 56,
                    height: 18,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE57B00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Featured',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Icon(
                          Icons.house,
                          size: 18,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'HOUSE',
                          style: TextStyle(
                            color: Color(0xFF475569),
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$307,857',
                          style: TextStyle(
                            color: Color(0xFF006AE5),
                            fontSize: 12,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 0.12,
                            letterSpacing: 0.30,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Rumah megah grand regency ',
                          style: TextStyle(
                            color: Color(0xFF121826),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            height: 0.12,
                            letterSpacing: 0.30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 16,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 2),
                        Text(
                          'Sukolilo',
                          style: TextStyle(
                            color: Color(0xFF475569),
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  final List<String> cardTitles = List.generate(10, (index) => 'Card ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 1.0,
      childAspectRatio: 1 / 1.88,
      children:
      List.generate(
      cardTitles.length, (index) => card(),
    ));
  }
}
