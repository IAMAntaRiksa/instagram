import 'package:flutter/material.dart';
import 'package:instagram/ui/profile/profile_screen.dart';

class ButtomNavigation extends StatefulWidget {
  ButtomNavigation({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  _ButtomNavigationState createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int _selectedIndexBody = 0;

  final List<Widget> _dashboardBodyWidgets = <Widget>[
    const Placeholder(color: Colors.green),
    const Placeholder(color: Colors.black),
    const Placeholder(color: Colors.blue),
    const Placeholder(color: Colors.green),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _dashboardBodyWidgets[_selectedIndexBody],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.amber[400],
        currentIndex: _selectedIndexBody,
        onTap: (value) {
          setState(() {
            _selectedIndexBody = value;
          });
        },
        backgroundColor: Colors.white10,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home_outline.png',
              scale: 2,
            ),
            activeIcon: Image.asset(
              'assets/icons/home_filled.png',
              scale: 2,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/search_outline.png',
              scale: 2,
            ),
            activeIcon: Image.asset(
              'assets/icons/search_filled.png',
              scale: 2,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/reels_outline.png',
              scale: 2,
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/shop_outline.png',
              scale: 2,
            ),
            activeIcon: Image.asset(
              'assets/icons/shop_filled.png',
              scale: 2,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/avatars/new.png',
                  ),
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
