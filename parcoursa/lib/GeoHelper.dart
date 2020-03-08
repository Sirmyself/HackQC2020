import 'package:parcoursa/Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'dart:math';
import 'package:parcoursa/Classes/Balise.dart';
import 'package:parcoursa/Interfaces/IChargeDonnees.dart';

class GeoHelper
{

  static Balise getBaliseFromPoint(double lat, double long, double max)
  {
    DebugChargeur dc = DebugChargeur();
    Balise found;
    

  List<Balise> balises = dc.getBalisesPublic();
  balises.addAll(dc.getBalisesPublic(VILLE_SUPPORTE.QUEBEC));
  //balises.addAll(dc.getBalisesPublic(VILLE_SUPPORTE.MONTREAL));

  balises.addAll(dc.getBalisesArt(VILLE_SUPPORTE.RIMOUSKI));
  //balises.addAll(dc.getBalisesArt(VILLE_SUPPORTE.QUEBEC));
  //balises.addAll(dc.getBalisesArt(VILLE_SUPPORTE.MONTREAL));

  balises.addAll(dc.getBalisesParc(VILLE_SUPPORTE.RIMOUSKI));
  balises.addAll(dc.getBalisesParc(VILLE_SUPPORTE.QUEBEC));
  //balises.addAll(dc.getBalisesParc(VILLE_SUPPORTE.MONTREAL));

    for (int i = 0; i < balises.length; ++i)
    {
      double distance = getDistance(lat, long, balises[i].getLatitude(), balises[i].getLongitude());
      
      if (distance <= max)
      {
        found = balises[i];
        break;
      }
    }

    return found;
    
  }

  static double getDistance(double lat1, double lon1, double lat2, double lon2) 
  {
      var R = 6371; // Radius of the earth in km
      var dLat = toRadians(lat2-lat1);
      var dLon = toRadians(lon2-lon1); 
      var a = 
          sin(dLat/2) * sin(dLat/2) +
          cos(toRadians(lat1)) * cos(toRadians(lat2)) * 
          sin(dLon/2) * sin(dLon/2);

      var c = 2 * atan2(sqrt(a), sqrt(1-a)); 
      var d = R * c; // Distance in km
      return d;
  }

  static double toRadians(double deg) 
  {
      return deg * (pi/180);
  }

}