import 'package:flutter/material.dart';

class Coupons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CouponsState();
  }
}

Widget _myListViewCoupons(BuildContext context) {
  final titres = ['Aux Bienfaits', 'Cantine Le Rallye'];
  final soustitres = ['zzz', 'aaaaaa'];

  final icons = [Icons.monetization_on, Icons.monetization_on];

  return ListView.builder(
    itemCount: titres.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
            leading: Icon(icons[index]),
            title: Text(titres[index]),
            trailing: IconButton(icon: Icon(Icons.credit_card), onPressed: () {}),
            subtitle: Text(soustitres[index])
        ),
      );
    },
  );
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _myListViewCoupons(context))
    );
  }
}