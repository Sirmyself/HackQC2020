import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcoursa/profil.dart';
import 'favoris.dart';
import 'decouverte.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Trending(),
    PlaceholderWidget(Colors.deepOrange),
    Profil()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: new Icon(LineIcons.globe),
            title: new Text('Découverte'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(LineIcons.heart_o),
            title: new Text('Favoris'),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.user),
            title: Text('Profil'),
          )
        ],
      ),
    );
  }
}