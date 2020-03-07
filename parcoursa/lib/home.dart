import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcoursa/profil.dart';
import 'favoris.dart';
import 'decouverte.dart';
import 'Classes/Utilisateur.dart';
import 'GeoHelper.dart';
import 'package:parcoursa/Classes/Balise.dart';

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
    getPosition();
  }

  void getPosition() async {
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    balise = GeoHelper.isPointInArea(position.latitude, position.longitude, 20);

    if(balise != null)
    {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
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
                          hintText: 'Bravo ! Vous avez obtenu x points. Lieu: ${balise.nomBalise}'),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                    ),
                    SizedBox(
                      width: 320.0,
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {});
                            Navigator.of(context).pop();},
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
