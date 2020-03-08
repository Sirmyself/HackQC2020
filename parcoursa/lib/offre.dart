import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'Carte.dart';
import 'Classes/Promotion.dart';
import 'decouverte.dart';
import 'profil.dart';
import 'package:parcoursa/Classes/Utilisateur.dart';

List promotions = [
  new Promotion(
      'Aux Bienfaits', 'Obtenez un (1) bébé cornet à l\'achat d\'un sundae.'),
  new Promotion('Cantine Le Rallye',
      'Obtenez un (1) hot-dog gratuitement à l\'achat d\'un trio poutine.')
];

class Offre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffreState();
  }
}

class _OffreState extends State<Offre> {
  int _currentIndex = 2;

  final List<Widget> _children = [Trending(), Carte(), Profil()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Stack(
        children: <Widget>[
          Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: onTabTapped, // new
              currentIndex: _currentIndex, // new
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(LineIcons.globe),
                  title: new Text('Découverte'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(LineIcons.map),
                  title: new Text('Carte'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(LineIcons.user),
                  title: Text('Profil'),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0),
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
  final icons = [Icons.monetization_on, Icons.monetization_on];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView.builder(
      itemCount: offresActives.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(offresActives[index].point.toString()),
            ),
            title: Text(offresActives[index].titre, style: TextStyle(fontSize: 22)),
            subtitle: Text(offresActives[index].description, style: TextStyle(fontSize: 14)),
            trailing: IconButton(
                icon: Icon(Icons.add_circle, size: 30),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), //this right here
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
                                        hintText:
                                            'Voulez-vous échanger des points pour obtenir cette récompense?'),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                  SizedBox(
                                    width: 320.0,
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          print(index);
                                          utilisateur.offres.add(offresActives.removeAt(index));
                                          //icons.removeAt(index);
                                        });
                                        Navigator.of(context).pop();
                                      },
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
                                        Navigator.of(context).pop();
                                      },
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