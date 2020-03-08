import 'dart:math';
import 'Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'Interfaces/IChargeDonnees.dart';
var rng = new Random(23);

var debug = DebugChargeur();
var public = debug.getBalisesPublic().first;
var art = debug.getBalisesArt().first;

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
  
  {
    "img": parcRimouski.first.urlImage,
    "title": parcRimouski.first.nomBalise,
    "address": parcRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcRimouski.length
  },
  {
    "img": artRimouski.first.urlImage,
    "title": artRimouski.first.nomBalise,
    "address": artRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artRimouski.length
  },
  {
    "img": publicRimouski.first.urlImage,
    "title": publicRimouski.first.nomBalise,
    "address": publicRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicRimouski.length
  },

  
  {
    "img": parcQuebec.first.urlImage,
    "title": parcQuebec.first.nomBalise,
    "address": parcQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcQuebec.length
  },
  {
    "img": publicQuebec.first.urlImage,
    "title": publicQuebec.first.nomBalise,
    "address": publicQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicQuebec.length
  },

  
  {
    "img": parcMontreal.first.urlImage,
    "title": parcMontreal.first.nomBalise,
    "address": parcMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcMontreal.length
  },
  {
    "img": artMontreal.first.urlImage,
    "title": artMontreal.first.nomBalise,
    "address": artMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artMontreal.length
  },
  {
    "img": publicMontreal.first.urlImage,
    "title": publicMontreal.first.nomBalise,
    "address": publicMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicMontreal.length
  }
];
/*



List parcours = [
  
  {
    "img": "assets/profil_1.jpg",
    "title": "meuh",
    "address": "huvdsi",
    "rating": "48",
    "nbrBalise": 6
  },
  {
    "img": parcRimouski.first.urlImage,
    "title": parcRimouski.first.nomBalise,
    "address": parcRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcRimouski.length
  },
  {
    "img": artRimouski.first.urlImage,
    "title": artRimouski.first.nomBalise,
    "address": artRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artRimouski.length
  },
  {
    "img": publicRimouski.first.urlImage,
    "title": publicRimouski.first.nomBalise,
    "address": publicRimouski.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicRimouski.length
  },

  
  {
    "img": parcQuebec.first.urlImage,
    "title": parcQuebec.first.nomBalise,
    "address": parcQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcQuebec.length
  },/*
  {
    "img": artQuebec.first.urlImage,
    "title": artQuebec.first.nomBalise,
    "address": artQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artQuebec.length
  },*/
  {
    "img": publicQuebec.first.urlImage,
    "title": publicQuebec.first.nomBalise,
    "address": publicQuebec.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicQuebec.length
  },

  
  {
    "img": parcMontreal.first.urlImage,
    "title": parcMontreal.first.nomBalise,
    "address": parcMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": parcMontreal.length
  },
  {
    "img": artMontreal.first.urlImage,
    "title": artMontreal.first.nomBalise,
    "address": artMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": artMontreal.length
  },
  {
    "img": publicMontreal.first.urlImage,
    "title": publicMontreal.first.nomBalise,
    "address": publicMontreal.first.description,
    "rating": (rng.nextInt(100) + 25).toString(),
    "nbrBalise": publicMontreal.length
  },
];
*/