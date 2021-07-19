import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/home/twitter_home.dart';
import 'package:flutter_first_app/ui/twitter/profile/twitter.dart';
import 'package:flutter_first_app/ui/twitter/search/search.dart';

class TwitterNavigation extends StatefulWidget {
  @override
  _TwitterNavigationState createState() => _TwitterNavigationState();
}

class _TwitterNavigationState extends State<TwitterNavigation> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    TwitterHomeScreen(),
    TwitterSearchPage(),
    TwitterProfileScreen(),
    TwitterProfileScreen(),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTapped,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.blue,
        currentIndex: currentTabIndex,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Home'),
        ],
      ),
    );
  }
}
