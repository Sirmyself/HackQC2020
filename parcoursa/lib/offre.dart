import 'package:flutter/material.dart';
import 'package:parcoursa/BottomNavigation.dart';


class Offre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffreState();
  }
}

Widget _myListView(BuildContext context) {
  final titres = ['Aux Bienfaits', 'Cantine Le Rallye'];
  final soustitres = ['Obtenez un (1) bébé cornet à l''achat d''un sundae.', 'Obtenez un hot-dog gratuitement à l''achat d''un trio poutine'];

  final icons = [Icons.monetization_on, Icons.monetization_on];

  return ListView.builder(
    itemCount: titres.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titres[index]),
          trailing: IconButton(icon: Icon(Icons.add_circle), onPressed: () {}),
          subtitle: Text(soustitres[index])
        ),
      );
    },
  );
}

class _OffreState extends State<Offre> {

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _myListView(context))
    );
  }
}