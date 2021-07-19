import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/profile/circleAvatar.dart';

ListTile buildListTile(
  String image,
  String title,
  String subtitle,
  String date,
) {
  return ListTile(
    leading: buildCircleAvatar(image,20),
    title: Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 3),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            date,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(color: Colors.white),
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    ),
  );
}
