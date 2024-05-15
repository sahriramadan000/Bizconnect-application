// import 'package:bizconnect_application/models/user_model.dart';
import 'package:bizconnect_application/views/widgets/app_bar.dart';
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
      backgroundColor: Color(0xFF17191A),
      appBar: CustomAppBar(withLogo: false, textHead: 'Explore'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 360,
                  child: ListView(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 16),
                      buildImageWidget('assets/image-section-head1.png', 250, 360),
                      SizedBox(width: 16),
                      buildImageWidget('assets/image-section-head2.png', 250, 360),
                      SizedBox(width: 16),
                      buildImageWidget('assets/image-section-head3.png', 250, 360),
                      SizedBox(width: 16),
                      buildImageWidget('assets/image-section-head4.png', 250, 360),
                      SizedBox(width: 16),
                      buildImageWidget('assets/image-section-head5.png', 250, 360),
                      SizedBox(width: 16),
                      buildImageWidget('assets/image-section-head6.png', 250, 360),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildImageWidget('assets/gallery1.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery2.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery5.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery6.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery7.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery8.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery9.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery10.png', 172, 180),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildImageWidget('assets/gallery3.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery4.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery11.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery12.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery13.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery14.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery15.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/gallery4.png', 172, 250),
                      SizedBox(height: 16),
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

