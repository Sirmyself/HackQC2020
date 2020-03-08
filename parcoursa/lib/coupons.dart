import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcoursa/Classes/Utilisateur.dart';

import 'Carte.dart';
import 'decouverte.dart';
import 'profil.dart';

class Coupons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CouponsState();
  }
}

Widget _myListViewCoupons(BuildContext context) {

  final icons = Icons.monetization_on;

  return ListView.builder(
    itemCount: utilisateur.offres.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
            leading: Icon(icons),
            title: Text(utilisateur.offres[index].titre),
            trailing:
                IconButton(icon: Icon(Icons.credit_card), onPressed: () {}),
            subtitle: Text(utilisateur.offres[index].description)),
      );
    },
  );
}

class _CouponsState extends State<Coupons> {

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
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
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
                padding: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0),
                child: Text(
                  "Coupons",
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
              child: _myListViewCoupons(context)),
        ],
      ),
    ));
  }
}
