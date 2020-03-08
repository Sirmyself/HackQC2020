import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:parcoursa/Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'dart:ui';
import 'Classes/Balise.dart';
import 'package:line_icons/line_icons.dart';

class Balises extends StatefulWidget {
  final String title;

  Balises({Key key, @required this.title}) : super(key: key);

  @override
  _BalisesState createState() => _BalisesState();
}
/*
Widget _buildContainer() {
  return Material(
    color: Colors.blue,
    child: InkWell(
      onTap: () => print("Container pressed"), // handle your onTap here
      child: Container(height: 200, width: 200),
    ),
  );
}*/

class _BalisesState extends State<Balises> {
  DebugChargeur _charger = DebugChargeur();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Bali ses du",
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "parcour",
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: getBalises().length,
              itemBuilder: (BuildContext context, int index) {
                List<Balise> bals = getBalises();
                Balise bal = bals[index];

                return Container(
                  height: 120.00,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        color: Colors.white,
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                LineIcons.map_marker,
                                color: Colors.blue,
                                size: 65,
                              ),
                              Flexible(
                                child: Text(
                                  bal.nomBalise,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Balise> getBalises() {
    if (_charger
        .getBalisesArt()
        .any((element) => element.nomBalise == widget.title))
    _charger.getBalisesArt();
    if (_charger
        .getBalisesPublic()
        .any((element) => element.nomBalise == widget.title))
    _charger.getBalisesPublic();
    return _charger.getBalisesArt();
  }
}
