import 'package:flutter/material.dart';

Widget buildCardConnection(String imagePath, String title, String subtitle, bool withButton, bool statusOnline) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    margin: EdgeInsets.symmetric(horizontal: 0),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      leading: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            if (statusOnline)
              Positioned(
                top: -4,
                right: -4,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2AEF0A),
                    border: Border.all(
                      color: Color(0xFF17191A),
                      width: 4,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Color(0xFFDCDCDC),
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
      ),
      trailing: withButton
          ? GestureDetector(
              onTap: () {
                // Tambahkan logika untuk tindakan ketika tombol ditekan di sini
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xFF404144),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '+Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),
              ),
            ),
    ),
  );
}