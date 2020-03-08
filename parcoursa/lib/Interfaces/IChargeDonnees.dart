import 'package:parcoursa/Classes/Balise.dart';
import 'package:parcoursa/Classes/Trajet.dart';


abstract class IChargeDonnees {
  //var _url_interet_art; //just do it like in javascript...

  List<Balise> getBalisesPublic();
  Trajet getTrajetPublic();
  List<Balise> getBalisesArt();
  Trajet getTrajetArt();
  List<Balise> getBalisesParc();
  //Trajet getTrajetParc();
}