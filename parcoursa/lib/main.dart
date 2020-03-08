import 'package:flutter/material.dart';
import 'package:parcoursa/coupons.dart';
import 'package:parcoursa/navigationParcours.dart';
import 'package:parcoursa/succes.dart';
import 'package:parcoursa/LieuVisites.dart';
import 'home.dart';
import 'offre.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/offre': (context) => Offre(),
        '/coupons': (context) => Coupons(),
        '/visites' : (context) => Visites(),
        '/succes': (context) => Succes(),
        '/navigationparcours': (context) => NavigationParcours(),
      },
    );
  }
}