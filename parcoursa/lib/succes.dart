import 'package:flutter/material.dart';

class Succes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuccesState();
  }
}

Widget _myListViewSucces(BuildContext context) {
  final succes = ['Amateur d\'art', 'Amateur de parc', 'Touriste local'];
  final descriptionSucces = [
    'Visiter une oeuvre d\'art',
    'Visiter un parc',
    'Terminer un parcours suggéré'
  ];

  final icons = [Icons.bookmark, Icons.bookmark_border, Icons.bookmark_border];

  return ListView.builder(
    itemCount: succes.length,
    itemBuilder: (context, index) {
      return Card(
        color: index == 0 ? Colors.green : Colors.white,
        child: ListTile(
            leading: Icon(icons[index]),
            title: Text(succes[index]),
            subtitle: Text(descriptionSucces[index])),
      );
    },
  );
}

class _SuccesState extends State<Succes> {
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
                  "Succès",
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
                  "(1 sur 3)",
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
              child: _myListViewSucces(context)),
        ],
      ),
    ));
  }
}
