import 'package:bizconnect_application/views/widgets/app_bar.dart';
import 'package:bizconnect_application/views/widgets/card_connection.dart';
import 'package:flutter/material.dart';
import 'package:bizconnect_application/views/widgets/bottom_navigation_bar.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({Key? key}) : super(key: key);

  @override
  _ConnectionPageState createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17191A),
      appBar: CustomAppBar(withLogo: false, textHead: 'Category'),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Suggestions',
                  style: TextStyle(
                    color: Color(0xFFDCDCDC),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              child: buildCardConnection('assets/user2.png', 'Lydia Gouse', 'Business Owner', true, false),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              child: buildCardConnection('assets/user3.png', 'Clara Benville', 'Sales Representative Manager', true, false),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'More',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                ), 
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your conversations',
                  style: TextStyle(
                    color: Color(0xFFDCDCDC),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              child: buildCardConnection('assets/user2.png', 'Lydia Gouse', 'May you agree to attend this meetin...', false, true),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 3,
      ),
    );
  }
}