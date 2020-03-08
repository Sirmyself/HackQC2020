import 'package:google_maps_flutter/google_maps_flutter.dart';

class Trajet {
  static int createdElements = 0;
  int _id;
  List<Polyline> _chemin;


  Trajet (List<Polyline> pChemin) {
    ++createdElements;
    this._id = createdElements;
    _chemin = pChemin;
    }

  List<Polyline> getChemin()
  {
    return _chemin;
  }
}
