import 'package:flutter/material.dart';
import 'package:parcoursa/coupons.dart';
import 'package:parcoursa/navigationParcours.dart';
import 'package:parcoursa/succes.dart';
import 'home.dart';
import 'offre.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/offre': (context) => Offre(),
        '/coupons': (context) => Coupons(),
        '/succes': (context) => Succes(),
        '/navigationparcours': (context) => NavigationParcours(),
      },
    );
  }
}