import 'package:flutter/material.dart';
import 'package:bizconnect_application/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF17191A),
        primaryColorLight: Colors.white, 
      ),
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}