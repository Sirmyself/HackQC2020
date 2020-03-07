import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:line_icons/line_icons.dart';
import 'favoris.dart';
import 'decouverte.dart';
=======
import 'package:parcoursa/BottomNavigation.dart';
>>>>>>> d64873bb4f90b0eefb3330fa0df15fcdec7701bb

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
<<<<<<< HEAD
  int _currentIndex = 0;
  final List<Widget> _children = [
    Trending(),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
=======
>>>>>>> d64873bb4f90b0eefb3330fa0df15fcdec7701bb

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavagation(),
    );
  }
}
