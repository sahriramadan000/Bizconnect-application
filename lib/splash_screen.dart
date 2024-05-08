import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bizconnect_application/controllers/homepage_controller.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageController(),
        ), 
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/logo.png',
        height: 150,
        width: 150,
      ),
      nextScreen: HomePageController(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color(0xFF17191A),
      duration: 3000,
    );
  }
}