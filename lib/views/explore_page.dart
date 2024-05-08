// import 'package:bizconnect_application/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:bizconnect_application/views/widgets/bottom_navigation_bar.dart';
import 'package:bizconnect_application/views/widgets/build_image_explore.dart';

class ExplorePage extends StatefulWidget {
  // final User user;

  // const ExplorePage({Key? key, required this.user}) : super(key: key);
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17191A), // Use primaryColor as background color
      appBar: AppBar(
        backgroundColor: Color(0xFF17191A),
        elevation: 0,
        title:  Row(
          children: [
            Text(
              'Explore',
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
        ),
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
                        width: 4, // Lebar border
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 360,
                  child: ListView(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildImageWidget('assets/image1.png'),
                      buildImageWidget('assets/image2.png'),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Atur posisi ke atas
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: buildImageWidget('assets/image3.png'),
                      ),
                      SizedBox(height: 16), // Jarak antara gambar
                      Align(
                        alignment: Alignment.topCenter,
                        child: buildImageWidget('assets/image4.png'),
                      ),
                      SizedBox(height: 16), // Jarak antara gambar
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Atur posisi ke atas
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: buildImageWidget('assets/image5.png'),
                      ),
                      SizedBox(height: 16), // Jarak antara gambar
                      Align(
                        alignment: Alignment.topCenter,
                        child: buildImageWidget('assets/image6.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
      ),
    );
  }
}

