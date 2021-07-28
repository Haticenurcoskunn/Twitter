import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context,{required Widget widget,required Widget actions}){
  return AppBar(
    leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () {Scaffold.of(context).openDrawer();
            }
          ),

  ),iconTheme: IconThemeData(color: Colors.blue),
    centerTitle: true,
    title: Center(
      child: widget,
    ),
    actions: [
    actions,
    ],
    backgroundColor: Colors.black,
  );
}
