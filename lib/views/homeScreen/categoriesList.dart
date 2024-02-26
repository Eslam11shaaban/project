import 'package:flutter/material.dart';

import 'categoriesCard.dart';
class categoriesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
      height: 135,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context,index){
            return categoriesCard();
          }),
    );
  }
}
