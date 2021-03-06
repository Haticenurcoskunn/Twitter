import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page/home_page.dart';
import 'package:flutter_first_app/pages/message_page/message_page.dart';
import 'package:flutter_first_app/pages/search_page/search_page.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_first_app/utils/custom_widget/drawer/drawer.dart';

class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    HomePage(),
    SearchPage(),
    SearchPage(),
    MessagePage(),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: currentTabIndex,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: buildBlueIcon(Icons.home), label: ' '),
          BottomNavigationBarItem(
              icon: buildBlueIcon(Icons.search), label: ' '),
          BottomNavigationBarItem(
              icon: buildBlueIcon(Icons.notification_add), label: ' '),
          BottomNavigationBarItem(icon: buildBlueIcon(Icons.mail), label: ' '),
        ],
      ),
    );
  }
}
