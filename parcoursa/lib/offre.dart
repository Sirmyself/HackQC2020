import 'package:flutter/material.dart';
import 'package:parcoursa/BottomNavigation.dart';
import 'package:parcoursa/Classes/Promotion.dart';
import 'package:parcoursa/Classes/Utilisateur.dart';
import 'dart:math';

List promotions = [
  new Promotion(
      'Aux Bienfaits', 'Obtenez un (1) bébé cornet à l\'achat d' 'un sundae.'),
  new Promotion('Cantine Le Rallye',
      'Obtenez un hot-dog gratuitement à l\'achat d\'un trio poutine')
];

class Offre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffreState();
  }
}

class _OffreState extends State<Offre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Stack(
        children: <Widget>[
          BottomNavagation(),
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
              child: BodyLayout()),
        ],
      ),
    ));
  }
}

class BodyLayout extends StatefulWidget {
  @override
  BodyLayoutState createState() {
    return new BodyLayoutState();
  }
}

class BodyLayoutState extends State<BodyLayout> {
  //final titres = ['Aux Bienfaits', 'Cantine Le Rallye'];
  //final soustitres = ['Obtenez un (1) bébé cornet à l\'achat d''un sundae.', 'Obtenez un hot-dog gratuitement à l\'achat d\'un trio poutine'];
  final icons = [Icons.monetization_on, Icons.monetization_on];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView.builder(
      itemCount: promotions.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: ListTile(
            //leading: FlatButton.icon(onPressed: null, icon: Icon(icons[index], size: 30, color: Color(0xFF404A5C),), label: Text('13300')) ,
            leading: CircleAvatar(child: Text(chiffreRandom().toString()),foregroundColor: Color.fromRGBO(255, 255, 255, 9), backgroundColor: Color.fromRGBO(25, 50, 57, 9),),
            title: Text(promotions[index].titre, style: TextStyle(fontSize: 22)),
            subtitle: Text(promotions[index].description, style: TextStyle(fontSize: 14)),
            trailing: IconButton(icon: Icon(Icons.add_circle, size: 30, color: Color.fromRGBO(25, 50, 57, 1),), onPressed: () {
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
                                  hintText: 'Voulez-vous échanger des points pour obtenir cette récompense?'),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                            ),
                            SizedBox(
                              width: 320.0,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    promotions.removeAt(index);
                                    icons.removeAt(index);});
                                    Navigator.of(context).pop();},
                                child: Text(
                                  "Échanger",
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: const Color.fromRGBO(25, 50, 57, 9),
                              ),
                            ),
                            SizedBox(
                              width: 320.0,
                              child: RaisedButton(
                                onPressed: () {
                                    Navigator.of(context).pop();},
                                child: Text(
                                  "Attendre",
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: const Color.fromRGBO(25, 50, 57, 9),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
              });
            }),
          ),
        );
      },
    );
  }
}

int chiffreRandom() {
  var randomizer = new Random(); // can get a seed as a parameter
  return randomizer.nextInt(10000);
}
