import 'package:bizconnect_application/views/widgets/app_bar.dart';
import 'package:bizconnect_application/views/widgets/card_notification.dart';
import 'package:flutter/material.dart';
import 'package:bizconnect_application/views/widgets/bottom_navigation_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17191A),
      appBar: CustomAppBar(withLogo: false, textHead: 'Filters'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/fire.png', 'Trending', 'Your Post is Trending in the hot Section', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/love.png', 'Trending', 'Your Post is Trending in the hot Section', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/message.png', 'Comment', 'Someone commented on your post: Around Heavy ball floor these lang....', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/love.png', 'Trending', 'Your Post is Trending in the Fun Section', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/arrow_up.png', 'Upvote', 'Someone Upvote on your post: Around Heavy ball floor these languag....', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/message.png', 'Comment', 'Someone commented on your post: Around Heavy ball floor these lang....', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/love.png', 'Trending', 'Your Post is Trending in the Fun Section', '9.56 AM'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardNotification('assets/arrow_up.png', 'Upvote', 'Someone Upvote on your post: Around Heavy ball floor these languag....', '9.56 AM'),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 2,
      ),
    );
  }
}