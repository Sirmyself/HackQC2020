import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Points extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PointsState();
  }
}

Widget _myListViewPoints(BuildContext context) {
  final succes = ['25 points', '35 points', '50 points', '15 points', '25 points', '23 points'];
  final descriptionSucces = [
    '7 mars',
    '7 mars',
    '27 février',
    '23 février',
    '15 février',
    '30 janvier'
  ];

  return ListView.builder(
    itemCount: succes.length,
    itemBuilder: (context, index) {
      return Card(
        color: Colors.white,
        child: ListTile(
            leading: Icon(LineIcons.dot_circle_o),
            title: Text(succes[index]),
            subtitle: Text(descriptionSucces[index])),
      );
    },
  );
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0),
                child: Text(
                  "Points",
                  style: TextStyle(
                    fontSize: 63,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0),
                child: Text(
                  "Historique des points",
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10.0, 125.0, 10.0, 0),
              child: _myListViewPoints(context)),
        ],
      ),
    ));
  }
}
