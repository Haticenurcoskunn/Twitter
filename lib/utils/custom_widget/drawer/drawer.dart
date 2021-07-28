import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/profile_page/profile_page.dart';
import 'package:flutter_first_app/utils/custom_widget/blue_icons.dart';
import 'package:flutter_first_app/utils/custom_widget/divider.dart';
import 'package:flutter_first_app/utils/custom_widget/title.dart';
import 'drawer_header/drawer_header.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Drawer(
      child: Expanded(
        child: ListView(
          children: [
            buildDrawerHeader(context),
            buildDivider(),
            buildDrawerInfo(context, 'Profile', Icons.ac_unit),
            buildDrawerInfo(context, 'Listeler', Icons.ac_unit),
            buildDrawerInfo(context, 'Konular', Icons.ac_unit),
            buildDrawerInfo(context, 'Yer İşaretleri', Icons.ac_unit),
            buildDrawerInfo(context, 'Anlar', Icons.ac_unit),
            buildDrawerInfo(context, 'Gelire Dönüştürme', Icons.ac_unit),
            buildDivider(),
            buildDrawerInfo(context, 'Twitter Reklamları', Icons.star),
            buildDivider(),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: buildTitle(
                  'Ayarlar ve gizlilik', Colors.white, FontWeight.normal, 25),
            ),
            buildDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBlueIcon(Icons.lightbulb_outline, size: 25),
                buildBlueIcon(Icons.star_border, size: 30)
              ],
            )
          ],
        ),
      ),
    ),
  );
}

buildDrawerInfo(BuildContext context, String title, IconData icon) {
  return SizedBox(
    child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey[200],
        ),
        tileColor: Colors.black,
        focusColor: Colors.black,
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        }),
  );
}
