import 'package:flutter/material.dart';

Widget buildImageWidget(String imagePath, double? width, double? height) {
  final double defaultWidth = 150;
  final double defaultHeight = 150;
  width ??= defaultWidth;
  height ??= defaultHeight;

  return Container(
    width:  width,
    height:  height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    padding: EdgeInsets.only(left: 16),
  );
}