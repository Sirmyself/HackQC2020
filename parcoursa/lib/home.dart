import 'package:flutter/material.dart';
import 'package:parcoursa/BottomNavigation.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavagation(),
    );
  }
}
