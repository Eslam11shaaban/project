import 'package:flutter/material.dart';
import 'package:flutter_app2/views/homeScreen/homeScreen.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: listView(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text(
        'Notifications',
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget listView() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return listViewItem(index);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 0);
      },
      itemCount: 15,
    );
  }

  Widget listViewItem(int index) {
    // Implement your list view item here
    return Container(
      margin: EdgeInsets.only(left: 10),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child:Container(
              margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
              child: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  message(index),
                  timeAndDate(index),
              ],
            ),
            ),
          )
        ],
      )
    );
  }
  Widget prefixIcon(){
    return Container(
      height: 55,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueGrey.shade300
      ),
      child: Icon(Icons.notifications,size: 25,color: Colors.blueGrey.shade700,),
    );
  }
  Widget message(int index){
    double textSize =16;
    return Container(
      child: RichText(
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: 'message',
          style: TextStyle(
            fontSize: textSize,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
              text: 'Message Description',
              style: TextStyle(
                fontWeight: FontWeight.w400
              )
            )
          ]
        ),
      ),
    );
  }
  Widget timeAndDate(int index){
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('20/2/2024',
            style: TextStyle(fontSize: 12,
          ),
          ),
          Text('07:10 pm',
            style: TextStyle(fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
