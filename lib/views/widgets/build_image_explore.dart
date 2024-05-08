import 'package:flutter/material.dart';

Widget buildImageWidget(String imagePath) {
  return Stack(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(imagePath),
        ),
      ),
    ],
  );
}