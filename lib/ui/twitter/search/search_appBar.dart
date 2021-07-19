  import 'package:flutter/material.dart';
import 'package:flutter_first_app/ui/twitter/home/appBar.dart';

AppBar buildSearchAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Center(
        child: buildElevatedButtonTwitter(
            context, "twitter'da ara                                   "),
      ),
      actions: [buildTwitterIcon(Icons.settings)],
      backgroundColor: Colors.black,
    );
  }

  Container buildElevatedButtonTwitter(BuildContext context, String title) {
  return Container(
    height: MediaQuery.of(context).size.height / 16,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        primary: Colors.grey[850],
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey[400],
          fontWeight: FontWeight.normal,
          fontSize: 17,
        ),
      ),
    ),
  );
}