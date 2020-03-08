import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'Interfaces/IChargeDonnees.dart';

class NavigationParcours extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationParcoursState();
  }
}

class _NavigationParcoursState extends State<NavigationParcours> {
  IChargeDonnees _charger = DebugChargeur();
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 2.4,
          width: MediaQuery.of(context).size.width / 1.2,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(48.449308, -68.525349),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: meMarker(),
          ),
        ),
      ),
    );
  }

  Set<Marker> meMarker() {
    var listMarker = _charger.getBalisesPublic();
    Set<Marker> toutMarker = Set<Marker>();
    for (var marker in listMarker) {
      toutMarker.add(marker.getMarker());
    }
    return toutMarker;
  }
}