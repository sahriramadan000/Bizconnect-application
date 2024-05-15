import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:bizconnect_application/routes/routes.dart';

class NavigationController {
  void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            Routes.routes['/homepage']!(context),
        transitionDuration: Duration.zero,
      ),
    );
  }

  void navigateToExplore(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            Routes.routes['/explore']!(context),
        transitionDuration: Duration.zero,
      ),
    );
  }

  void navigateToNotification(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            Routes.routes['/notification']!(context),
        transitionDuration: Duration.zero,
      ),
    );
  }

  void navigateToConnection(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            Routes.routes['/connection']!(context),
        transitionDuration: Duration.zero,
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;

  const BottomNavBar({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int selectedIndex;
  final NavigationController navigationController = NavigationController();

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    double bottomNavBarHeight = 65.0;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Container(
        height: bottomNavBarHeight,
        color: Color(0xFF404144),
        child: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: SlidingClippedNavBar.colorful(
            fontStyle: FontStyle.normal,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            iconSize: 27,
            backgroundColor: const Color(0xFF404144),
            barItems: [
              BarItem(
                icon: Icons.home_outlined,
                title: 'Home',
                activeColor: Colors.white,
                inactiveColor: Color(0xFFAEB1B4),
              ),
              BarItem(
                icon: Icons.track_changes_outlined,
                title: 'Explore',
                activeColor: Colors.white,
                inactiveColor: Color(0xFFAEB1B4),
              ),
              BarItem(
                icon: Icons.notifications_none_outlined,
                title: 'Notification',
                activeColor: Colors.white,
                inactiveColor: Color(0xFFAEB1B4),
              ),
              BarItem(
                icon: Icons.device_hub_outlined,
                title: 'Connection',
                activeColor: Colors.white,
                inactiveColor: Color(0xFFAEB1B4),
              ),
            ],
            selectedIndex: selectedIndex,
            onButtonPressed: (index) {
              if (index == selectedIndex) {
                return;
              }

              setState(() {
                selectedIndex = index;
              });

              if (index == 0) {
                navigationController.navigateToHome(context);
              } else if (index == 1) {
                navigationController.navigateToExplore(context);
              } else if (index == 2) {
                navigationController.navigateToNotification(context);
              } else if (index == 3) {
                navigationController.navigateToConnection(context);
              }
            },
          ),
        ),
      ),
    );
  }
}