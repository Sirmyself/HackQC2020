import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'favoris.dart';
import 'package:parcoursa/profil.dart';

int currentIndex = 0;

class BottomNavagation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavagationState();
  }
}

class _BottomNavagationState extends State<BottomNavagation> {

   void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    Profil(),
    PlaceholderWidget(Colors.red)
  ];

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: currentIndex, // new
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