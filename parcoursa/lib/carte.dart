import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Classes/ChargeurDeDonne/DebugChargeur.dart';
import 'Interfaces/IChargeDonnees.dart';

import 'home.dart';

class Carte extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarteState();
  }
}

class _CarteState extends State<Carte> {
  bool _public = true;
  bool _art = true;
  bool _parc = true;

  IChargeDonnees _charger = DebugChargeur();
  Completer<GoogleMapController> _controller = Completer();

  List<String> _villes = ['Rimouski', 'Québec', 'Montréal'];
  String _villeSelectionne = "Rimouski";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: <Widget>[
                  Text("Public"),
                  Checkbox(
                    value: _public,
                    onChanged: (bool value) {
                      setState(() {
                        _public = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: <Widget>[
                  Text("Art"),
                  Checkbox(
                    value: _art,
                    onChanged: (bool value) {
                      setState(() {
                        _art = value;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: <Widget>[
                  Text("Parc"),
                  Checkbox(
                    value: _parc,
                    onChanged: (bool value) {
                      setState(() {
                        _parc = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
          child: Column(
            children: <Widget>[
              DropdownButton<String>(
                value: _villeSelectionne,
                items: _villes.map((String val) {
                  return new DropdownMenuItem<String>(
                    value: val,
                    child: new Text(val),
                  );
                }).toList(),
                hint: Text("Choisissez une ville"),
                onChanged: (String nvVal) {
                  this.setState(() {
                    _villeSelectionne = nvVal;
                  });
                },
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
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
          ],
        ),
      ],
    );
  }

  Set<Marker> meMarker() {
    var listPublic = _charger.getBalisesPublic();
    var listArt = _charger.getBalisesArt();
    var listParc = _charger.getBalisesParc();

    Set<Marker> toutMarker = Set<Marker>();

    if (_public) {
      for (var marker in listPublic) {
        toutMarker.add(marker.getMarker());
      }
    }

    if (_art) {
      for (var marker in listArt) {
        toutMarker.add(marker.getMarker());
      }
    }

    if (_parc) {
      for (var marker in listParc) {
        toutMarker.add(marker.getMarker());
      }
    }

    // Ajoue position actuelle
    if (initialPosition == null)
    {
      obtenirPositionInitial();
    }
    else
    {
      toutMarker.add(new Marker(
      markerId: MarkerId("1000000"),
      position: LatLng(initialPosition.latitude, initialPosition.longitude),
      infoWindow: InfoWindow(title: "Position actuelle", snippet: "Position actuelle")));
    }

    return toutMarker;
  }
}

void obtenirPositionInitial() async
{
  initialPosition = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
}

