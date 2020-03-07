import 'package:parcoursa/Classes/Balise.dart';


abstract class IChargeDonnees {
  //var _url_interet_art; //just do it like in javascript...

  List<Balise> getBalisesPublic();
  List<Balise> getBalisesArt();
}