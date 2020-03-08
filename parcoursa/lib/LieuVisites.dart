import 'package:flutter/material.dart';

class Visites extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VisitesState();
  }
}

Widget _myListViewVisites(BuildContext context) {
  final listVisite = ['Paul-Hubert', 'Plaza Arthure-buies', 'Colisée Financière Sunlife', 'Les Galeries GP', 'Cegep de Rimouski'];
  final descriptionsVisites = [
    'Une des nombreuses écoles secondaire de Rimouski!!',
    'Un des nombreux centres d\'achats de Rimouski!!',
    'Aréna de 4 300 sièges.; Superficie de glace de 85 par 200 pieds.',
    'Attrait touristique et point d\'intérêt!!',
    'Un des nombreux établissements d\'études suppérieures de Rimouski!!'
  ];

  final icons = [Icons.bookmark, Icons.bookmark_border, Icons.bookmark_border, Icons.bookmark_border, Icons.bookmark_border];

  return ListView.builder(
    itemCount: listVisite.length,
    itemBuilder: (context, index) {
      return Card(
        color: index == 0 ? Colors.green : Colors.white,
        child: ListTile(
            leading: Icon(icons[index]),
            title: Text(listVisite[index]),
            subtitle: Text(descriptionsVisites[index])),
      );
    },
  );
}

class _VisitesState extends State<Visites> {
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
                  "Visites",
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
                  "Lieu visités à Rimouski",
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
              child: _myListViewVisites(context)),
        ],
      ),
    ));
  }
}
