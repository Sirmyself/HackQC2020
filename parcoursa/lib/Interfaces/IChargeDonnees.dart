import 'package:parcoursa/Classes/Balise.dart';
import 'package:parcoursa/Classes/Trajet.dart';

enum VILLE_SUPPORTE{ // filtre les villes supportées 
  RIMOUSKI,
  QUEBEC,
  MONTREAL
}

abstract class IChargeDonnees {
  //var _url_interet_art; //just do it like in javascript...

<<<<<<< HEAD
  List<Balise> getBalisesPublic([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]);
  List<Balise> getBalisesArt([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]);
  List<Balise> getBalisesParc([VILLE_SUPPORTE pVille = VILLE_SUPPORTE.RIMOUSKI]);
=======
  List<Balise> getBalisesPublic();
  Trajet getTrajetPublic();
  List<Balise> getBalisesArt();
  //Trajet getTrajetArt();
  List<Balise> getBalisesParc();
  //Trajet getTrajetParc();
>>>>>>> 5b12484095d74dfe178110f4598a523a99839976
}