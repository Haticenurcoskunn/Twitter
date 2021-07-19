import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/profile/twitter.dart';
import 'drawerHeader.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(context),
          buildDrawerListTile(context, 'Profile', Icons.ac_unit),
          buildDrawerListTile(context, 'Listeler', Icons.ac_unit),
          buildDrawerListTile(context, 'Konular', Icons.ac_unit),
          buildDrawerListTile(context, 'Yer İşaretleri', Icons.ac_unit),
          buildDrawerListTile(context, 'Anlar', Icons.ac_unit),
          buildDrawerListTile(context, 'Gelire Dönüştürme', Icons.ac_unit)
        ],
      ),
    ),
  );
}

Divider buildDivider() {
  return Divider(
    color: Colors.grey[700],
    height: 0.5,
  );
}

ListTile buildDrawerListTile(
    BuildContext context, String title, IconData icon) {
  return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey[200],
      ),
      tileColor: Colors.black,
      focusColor: Colors.black,
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TwitterProfileScreen()),
        );
      });
}
