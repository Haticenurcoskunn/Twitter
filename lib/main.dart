import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_first_app/utils/custom_widget/navigation/navigation.dart';


void main() {
  runApp(
    myHomePage(),
  );
}

MaterialApp myHomePage() {
  return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      canvasColor: Colors.black,
      ),
      home: SafeArea(child:Twitter()));
}
