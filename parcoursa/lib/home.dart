import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcoursa/profil.dart';
import 'Carte.dart';
import 'decouverte.dart';
import 'Classes/Utilisateur.dart';
import 'GeoHelper.dart';
import 'package:parcoursa/Classes/Balise.dart';

Position initialPosition;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Balise balise;

  @override
  void initState() {
    super.initState();
    checkPosition();
  }

  void checkPosition() async {

    var geolocator = Geolocator();
    var locationOptions = LocationOptions(accuracy: LocationAccuracy.low, distanceFilter: 200);

    StreamSubscription<Position> positionStream = geolocator.getPositionStream(locationOptions).listen(
    (Position position) {
   
        initialPosition = position;
    });

    Position position = await geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    balise = GeoHelper.getBaliseFromPoint(
        position.latitude, position.longitude, 0.01);

    if (balise != null) {

      initialPosition = position;

      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                'Bravo ! Vous avez obtenu 5 points. Lieu: ${balise.nomBalise}'),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                      SizedBox(
                        width: 320.0,
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {});
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "Fermer",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: const Color(0xFF404A5C),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    }
  }

  static Utilisateur utilisateur = Utilisateur();

  int _currentIndex = 0;
  final List<Widget> _children = [Trending(), Carte(), Profil()];

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
            icon: new Icon(LineIcons.map),
            title: new Text('Carte'),
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
