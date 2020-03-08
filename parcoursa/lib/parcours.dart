import 'package:parcoursa/Classes/ChargeurDeDonne/DebugChargeur.dart';
//import 'package:parcoursa/parcour.dart';

var debug = DebugChargeur();
var public = debug.getBalisesPublic().first;
var art = debug.getBalisesArt().first;


List parcours = [
  {
    "img": public.urlImage,
    "title": public.nomBalise,
    "address": public.description,
    "rating": "56",
    "nbrBalise": debug.getBalisesPublic().length
  },
  {
    "img": art.urlImage,
    "title": art.nomBalise,
    "address": art.description,
    "rating": "97",
    "nbrBalise": debug.getBalisesArt().length
  },
  {
    "img": "assets/riviereduloup_chute.jpg",
    "title": "Rivière-du-loup",
    "address": "Plusieurs attraits de Rivière-du-loup",
    "rating": "44",
    "nbrBalise": 4
  },
  {
    "img": "assets/lapocatiere_gare.jpg",
    "title": "Lapocatière",
    "address": "Plusieurs attraits de Lapocatière",
    "rating": "50",
    "nbrBalise": 3
  },
  {
    "img": "assets/montjoli_fresques.jpg",
    "title": "Mont-Joli",
    "address": "Plusieurs attraits de Mont-Joli",
    "rating": "93",
    "nbrBalise": 10
  },
  {
    "img": "assets/saguenay_maison-deluge.jpg",
    "title": "Saguenay",
    "address": "Plusieurs attraits du Saguenay",
    "rating": "18",
    "nbrBalise": 5
  },
  {
    "img": "assets/perce_rocher.jpg",
    "title": "Percé",
    "address": "Plusieurs attraits de Percé",
    "rating": "23",
    "nbrBalise": 8
  },
  {
    "img": "assets/quebec_chateau-frontenac.jpg",
    "title": "Québec",
    "address": "Plusieurs attraits de Québec",
    "rating": "40",
    "nbrBalise": 7
  },
  {
    "img": "assets/montreal_biodome.jpg",
    "title": "Montréal",
    "address": "Plusieurs attraits de Montréal",
    "rating": "45",
    "nbrBalise": 3
  }
];