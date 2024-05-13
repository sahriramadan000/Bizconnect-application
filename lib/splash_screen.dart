import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bizconnect_application/routes/routes.dart';

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
          MaterialPageRoute(builder: (context) => Routes.routes['/homepage']!(context)),
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
      nextScreen: Routes.routes['/homepage']!(context),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color(0xFF17191A),
      duration: 3000,
    );
  }
}