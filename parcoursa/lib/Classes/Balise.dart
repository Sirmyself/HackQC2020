import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Balise {
  static int createdElements = 0;
  int _id;
  double _latitude;
  double _longitude;
  String _nomBalise;
  String _description;
  int _pointsExploration;
  bool _achievementUnlocked = false;
  String _condition;
  String _urlImage;


  Balise (double pLatitude, double pLongitude, String pNom, String pDescription, [String pCondition = "", int pPoints = 100, String pImage]) {
    ++createdElements;
    this._id = createdElements;
    this._latitude = pLatitude;
    this._longitude = pLongitude;
    this._nomBalise = pNom;
    this._description = pDescription;

    this._pointsExploration = pPoints;
    this._condition = pCondition;
    this._urlImage = pImage;
  }

  Marker getMarker() {
    return Marker(
      markerId: MarkerId(this._id.toString()),
      position: LatLng(this._latitude, _longitude),
      infoWindow: InfoWindow(title: this._nomBalise, snippet: this._description)
    );
  }

  int verifierAchievement(String pTentative) {
    int retVal = 0;

    if (!this._achievementUnlocked) {
      this._achievementUnlocked = (pTentative == this._condition);
      retVal = this._achievementUnlocked ? this._pointsExploration : 0;
    }

    return retVal;
  }
}