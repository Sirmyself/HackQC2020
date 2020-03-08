import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:parcoursa/Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'dart:ui';
import 'package:line_icons/line_icons.dart';

class Points extends StatefulWidget {

  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
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
                "Historique",
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
                "des points",
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
              itemCount: getPoints().length,
              itemBuilder: (BuildContext context, int index) {
                List<int> bals = getPoints();
                int bal = bals[index];

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
                          child: Card(
                            child: ListTile(
                              leading: Icon(LineIcons.dot_circle_o),
                              title: Text(bal.toString()),
                              subtitle: Text("date"),
                            ),
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

  List<int> getPoints() {
    return [1, 2, 3, 4, 5];
  }
}
