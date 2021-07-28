import 'package:flutter/material.dart';

Row buildVerticalDivider() {
  return Row(
    children: [
      VerticalDivider(
        color: Colors.grey,
        thickness: 3,
        endIndent: 600,
        width: 20,
      ),
    ],
  );
}
