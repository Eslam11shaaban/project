import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../../onbording/onbording.dart';
import '../homeScreen/homeView.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  void initState(){
    navigateToHome();
  }
  void navigateToHome() {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(() =>  Onbording() , transition: Transition.fade,duration: Duration(microseconds: 200));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Group.png')
      ],
    );
  }
}
