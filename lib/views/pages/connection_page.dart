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
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardConnection('assets/fire.png', 'Lydia Gouse', 'Business Owner', true, false),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: buildCardConnection('assets/love.png', 'Clara Benville', 'Sales Representative Manager', false, false),
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