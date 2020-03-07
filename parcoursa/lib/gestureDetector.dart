import 'package:flutter/material.dart';

Widget _buildContainer() {
  return Material(
    color: Colors.blue,
    child: InkWell(
      onTap: () => print("Container pressed"), // handle your onTap here
      child: Container(height: 200, width: 200),
    ),
  );
}