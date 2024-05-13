import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool withLogo;
  final String? textHead;

  const CustomAppBar({Key? key, required this.withLogo, this.textHead}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF17191A),
      elevation: 0,
      leading: withLogo
          ? Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Image.asset('assets/logo.png'),
            )
          : null,
      title: withLogo
          ? null
          : textHead != null
              ? Row(
                  children: [
                    Text(
                      textHead!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ],
                )
              : null,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Color(0xFF9FA1A4),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Stack(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/user1.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
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
      ],
    );
  }
}