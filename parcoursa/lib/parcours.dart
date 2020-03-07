import 'package:parcoursa/Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'package:parcoursa/parcour.dart';

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
    "img": "assets/statue_3.jpg",
    "title": "Happy Jones",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "44",
    "nbrBalise": 4
  },
  {
    "img": "assets/statue_4.jpg",
    "title": "Uncle Boons",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "50",
    "nbrBalise": 3
  },
  {
    "img": "assets/chat.jpg",
    "title": "Happy Jones",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "93",
    "nbrBalise": 10
  },
  {
    "img": "assets/chat.jpg",
    "title": "Happy Jones",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "18",
    "nbrBalise": 5
  },
  {
    "img": "assets/chat.jpg",
    "title": "Happy Jones",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "23",
    "nbrBalise": 8
  },
  {
    "img": "assets/chat.jpg",
    "title": "Happy Jones",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "40",
    "nbrBalise": 7
  },
  {
    "img": "assets/chat.jpg",
    "title": "Happy Jones",
    "address": "1278 Loving Acres RoadKansas City, MO 64110",
    "rating": "45",
    "nbrBalise": 3
  }
];