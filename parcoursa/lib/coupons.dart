import 'package:flutter/material.dart';
import 'package:parcoursa/Classes/Utilisateur.dart';

class Coupons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CouponsState();
  }
}

Widget _myListViewCoupons(BuildContext context) {
  List promotions = utilisateur.coupons;

  final icons = [Icons.monetization_on, Icons.monetization_on];

  return ListView.builder(
    itemCount: promotions.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
            leading: Icon(icons[index]),
            title: Text(promotions[index].titre),
            trailing:
                IconButton(icon: Icon(Icons.credit_card), onPressed: () {}),
            subtitle: Text(promotions[index].description)),
      );
    },
  );
}

class _CouponsState extends State<Coupons> {
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
