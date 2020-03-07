import 'package:flutter/material.dart';


class Offre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffreState();
  }
}

Widget _myListView(BuildContext context) {
  final titres = ['Aux Bienfaits', 'Cantine Le Rallye'];
  final soustitres = ['Obtenez un (1) bébé cornet à l\'achat d\'un sundae.', 'Obtenez un (1) hot-dog gratuitement à l\'achat d\'un trio poutine'];

  final icons = [Icons.monetization_on, Icons.monetization_on];

  return ListView.builder(
    itemCount: titres.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index], size: 30,),
          title: Text(titres[index], style: TextStyle(fontSize: 25)),
          trailing: IconButton(icon: Icon(Icons.add_circle, size: 30), onPressed: () {}),
          subtitle: Text(soustitres[index], style: TextStyle(fontSize: 16))
        ),
      );
    },
  );
}

class _OffreState extends State<Offre> {
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
                  "Offres",
                  style: TextStyle(
                    fontSize: 63,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0),
            child: _myListView(context)
          ),
        ],
      ),
    ));
  }
}
