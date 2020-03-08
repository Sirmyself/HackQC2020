
//import 'package:parcoursa/parcour.dart';

import 'dart:math';

import 'Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'Interfaces/IChargeDonnees.dart';

var rng = new Random();

IChargeDonnees debug = DebugChargeur();
var parcRimouski = debug.getBalisesParc(VILLE_SUPPORTE.RIMOUSKI);
var parcQuebec = debug.getBalisesParc(VILLE_SUPPORTE.QUEBEC);
var parcMontreal = debug.getBalisesParc(VILLE_SUPPORTE.MONTREAL);

var artRimouski = debug.getBalisesArt(VILLE_SUPPORTE.RIMOUSKI);
//var artQuebec = debug.getBalisesArt(VILLE_SUPPORTE.QUEBEC);
var artMontreal = debug.getBalisesArt(VILLE_SUPPORTE.MONTREAL);

var publicRimouski = debug.getBalisesPublic(VILLE_SUPPORTE.RIMOUSKI);
var publicQuebec = debug.getBalisesPublic(VILLE_SUPPORTE.QUEBEC);
var publicMontreal = debug.getBalisesPublic(VILLE_SUPPORTE.MONTREAL); 

List parcours = [
/*
  {
    "img": ,
    "title": ,
    "address": ,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": 
  },*/
  
  {
    "img": "assets/profil_1.jpg",
    "title": "meuh",
    "address": "huvdsi",
    "rating": "48",
    "nbrBalise": 6
  },
  {
    "img": parcRimouski.first.urlImage.toString(),
    "title": parcRimouski.first.nomBalise,
    "address": parcRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcRimouski.length
  },
  {
    "img": artRimouski.first.urlImage.toString(),
    "title": artRimouski.first.nomBalise,
    "address": artRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artRimouski.length
  },
  {
    "img": publicRimouski.first.urlImage.toString(),
    "title": publicRimouski.first.nomBalise,
    "address": publicRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicRimouski.length
  },

  
  {
    "img": parcQuebec.first.urlImage.toString(),
    "title": parcQuebec.first.nomBalise,
    "address": parcQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcQuebec.length
  },/*
  {
    "img": artQuebec.first.urlImage.toString(),
    "title": artQuebec.first.nomBalise,
    "address": artQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artQuebec.length
  },*/
  {
    "img": publicQuebec.first.urlImage.toString(),
    "title": publicQuebec.first.nomBalise,
    "address": publicQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicQuebec.length
  },

  
  {
    "img": parcMontreal.first.urlImage.toString(),
    "title": parcMontreal.first.nomBalise,
    "address": parcMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcMontreal.length
  },
  {
    "img": artMontreal.first.urlImage.toString(),
    "title": artMontreal.first.nomBalise,
    "address": artMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artMontreal.length
  },
  {
    "img": publicMontreal.first.urlImage.toString(),
    "title": publicMontreal.first.nomBalise,
    "address": publicMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicMontreal.length
  },//*/
];