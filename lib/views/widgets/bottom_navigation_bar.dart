import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:bizconnect_application/routes/routes.dart';

class NavigationController {
  void navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Routes.routes['/homepage']!(context)),
    );
  }

  void navigateToExplore(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Routes.routes['/explore']!(context)),
    );
  }

  void navigateToNotification(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Routes.routes['/notification']!(context)),
    );
  }

  void navigateToConnection(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Routes.routes['/connection']!(context)),
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
    double bottomNavBarHeight = 70.0;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
        ),
        child: SizedBox(
          height: bottomNavBarHeight,
          child: SlidingClippedNavBar.colorful(
            fontStyle: FontStyle.normal,
            backgroundColor: const Color(0xFF404144),
            barItems: [
              BarItem(
                icon: Icons.home_outlined,
                title: 'Home',
                activeColor: Colors.white70,
                inactiveColor: Colors.grey[200],
              ),
              BarItem(
                icon: Icons.track_changes_outlined,
                title: 'Explore',
                activeColor: Colors.white70,
                inactiveColor: Colors.grey[200],
              ),
              BarItem(
                icon: Icons.notifications_none_outlined,
                title: 'Notification',
                activeColor: Colors.white70,
                inactiveColor: Colors.grey[200],
              ),
              BarItem(
                icon: Icons.device_hub_outlined,
                title: 'Connection',
                activeColor: Colors.white70,
                inactiveColor: Colors.grey[200],
              ),
            ],
            selectedIndex: selectedIndex,
            onButtonPressed: (index) {
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