import 'dart:ui';

import 'package:flutter/material.dart';

class Profil_Ui extends StatefulWidget {
  Profil_Ui({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Nom d\'utilisateur : '),
        RichText(
            text: TextSpan(
                text: 'Votre nom d\'utilisateur est la seule information publique de votre profil.',
                style: TextStyle(fontStyle: FontStyle.italic)
            )
        ),
        Text('Votre nom : '),
        Text('Votre ville de résidence : '),
        RichText(
            text: TextSpan(
                text: 'Jusqu\'à maintenant, vous avez accumulé ',
                children: <TextSpan>[
                  TextSpan(
                      text: 'X',
                      style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text: ' points!'
                  )
                ]
            )
        ),
        DataTable(
            columns: [
              DataColumn(
                  label: Text('Succès')
              )
            ],
            rows:[
              DataRow(cells: [DataCell(Text('Visiter une oeuvre d\'art'))]),
              DataRow(cells: [DataCell(Text('Visiter un parc'))]),
              DataRow(cells: [DataCell(Text('Terminer un parcours'))])
            ]
        )
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }


}
