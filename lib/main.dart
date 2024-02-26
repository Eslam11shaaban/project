import 'package:flutter/material.dart';
import 'package:flutter_app2/views/Select%20type/SelectHome.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'views/SplashView.dart';

void main() {
  runApp(houseApp());
}
class houseApp extends StatelessWidget {
  const houseApp({key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.white,),
      home: SplashView(),
    );
  }
}
