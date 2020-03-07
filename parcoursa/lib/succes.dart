import 'package:flutter/material.dart';

class Succes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuccesState();
  }
}

Widget _myListViewSucces(BuildContext context) {
  final succes = ['Amateur d\'art', 'Amateur de parc', 'Touriste local'];
  final descriptionSucces = ['Visiter une oeuvre d\'art', 'Visiter un parc', 'Terminer un parcours suggéré'];

  final icons = [Icons.bookmark, Icons.bookmark_border, Icons.bookmark_border];

  return ListView.builder(
    itemCount: succes.length,
    itemBuilder: (context, index) {
      return Card(
        color: index == 0 ? Colors.green : Colors.white,//                           <-- Card widget
        child: ListTile(
            leading: Icon(icons[index]),
            title: Text(succes[index]),
            subtitle: Text(descriptionSucces[index])
        ),
      );
    },
  );
}

class _SuccesState extends State<Succes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _myListViewSucces(context))
    );
  }
}