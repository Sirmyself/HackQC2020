import 'package:parcoursa/Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'dart:math';
import 'package:parcoursa/Classes/Balise.dart';

class GeoHelper
{

  static Balise isPointInArea(double lat, double long, double max)
  {
    DebugChargeur dc = DebugChargeur();
    Balise found;
    
    for (int i = 0; i < dc.getBalisesPublic().length; ++i)
    {
      double distance = getDistance(lat, long, dc.getBalisesPublic()[i].getLatitude(), dc.getBalisesPublic()[i].getLongitude());
      
      if (distance <= max)
      {
        found = dc.getBalisesPublic()[i];
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