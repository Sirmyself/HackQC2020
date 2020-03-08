import 'package:parcoursa/Classes/Balise.dart';
import 'package:parcoursa/Classes/Trajet.dart';

enum VILLE_SUPPORTE{ // filtre les villes supportées 
  RIMOUSKI,
  QUEBEC,
  MONTREAL
}

abstract class IChargeDonnees {
  //var _url_interet_art; //just do it like in javascript...

  List<Balise> getBalisesPublic([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]);
  List<Balise> getBalisesArt([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]);
  List<Balise> getBalisesParc([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]);
  
  Trajet getTrajetPublic();
<<<<<<< HEAD
  List<Balise> getBalisesArt();
  Trajet getTrajetArt();
  List<Balise> getBalisesParc();
=======
  //Trajet getTrajetArt();
>>>>>>> master
  //Trajet getTrajetParc();
}