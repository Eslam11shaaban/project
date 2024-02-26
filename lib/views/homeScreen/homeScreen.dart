import 'package:flutter/material.dart';
import 'package:flutter_app2/component/TXT.dart';
import 'package:flutter_app2/views/homeScreen/TabsList.dart';
import 'package:flutter_app2/views/homeScreen/card.dart';
import 'package:flutter_app2/views/homeScreen/categoriesCard.dart';
import 'package:flutter_app2/views/notification/Notifications.dart';

import 'categoriesList.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 300,
                        height: 41,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                      color: Color(0xFF64748B),
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0.12,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 18,
                                  color: Colors.blueGrey,
                                ),
                                Text(
                                  'Surabaya, Indonesia',
                                  style: TextStyle(
                                    color: Color(0xFF121826),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                    height: 0.10,
                                    letterSpacing: 0.30,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: IconButton(
                              icon:Icon(Icons.notifications_active_rounded,
                              size: 30,
                              color: Colors.blueAccent),
                              onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context){
                                     return NotificationsPage();
                                 },)
                                 );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding:
                         EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF121826),
                        ),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        print('search');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                          ),
                          Text(
                            'Search real estate',
                            style: TextStyle(
                              color: Color(0xFF475569),
                              fontSize: 14,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                              letterSpacing: 0.30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  categoriesList(),
                  SizedBox(height: 24,),
                  TabsList(),
                  SizedBox(height: 24,),
                  CardListView()
                ],
              ),
            ),
          ),
        )
    );
  }
}
