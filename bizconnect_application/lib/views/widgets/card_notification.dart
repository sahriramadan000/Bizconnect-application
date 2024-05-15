import 'package:flutter/material.dart';

Widget buildCardNotification(String imagePath, String title, String subtitle, String datetime) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    margin: EdgeInsets.symmetric(horizontal: 0),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      leading: Transform.scale(
        scale: 1.3,
        child: Image.asset(
          imagePath,
          width: 40,
          height: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Color(0xFFDCDCDC),
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            datetime,
            style: TextStyle(
              color: Color(0xFF868686),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}