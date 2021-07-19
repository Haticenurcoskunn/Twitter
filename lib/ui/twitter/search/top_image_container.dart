import 'package:flutter/material.dart';

Container buildTopImageContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 3,
    child: Stack(
      fit: StackFit.expand,
      children: [
        Image(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://i2.cnnturk.com/i/cnnturk/75/800x400/60b4b0a4d265a202086246fe'),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "  Kovid-19 .Canlı \n",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "  Türkiye'de Kovid-19 ile ilgili \n  güncel gelişmeler",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
