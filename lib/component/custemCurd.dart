import 'package:flutter/material.dart';

class CusomCard extends StatelessWidget {
   CusomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 163,
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('cozy living',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,),),
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage('assets/images/d.webp'),
                        ),
                      ],
                    ),

                    Image.network('https://www.bing.com/th?id=OIP.rYOck2yFDnPIzlzaPd594wHaFj&w=146&h=120&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                      height: 130,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('price',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),),
                        Text('features',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),),
                      ],),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1.2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                        Text('12 hours',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                      ],),],),
              ),
            ),
          ),
          Container(
            width: 165,
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('cozy living',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,),),
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage('assets/images/d.webp'),
                        ),
                      ],
                    ),

                    Image.network('https://www.bing.com/th?id=OIP.rYOck2yFDnPIzlzaPd594wHaFj&w=146&h=120&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                      height: 130,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('price',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),),
                        Text('features',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),),
                      ],),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('1.2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                        Text('12 hours',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),
                      ],),],),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
