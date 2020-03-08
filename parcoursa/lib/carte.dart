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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
                          child: Text(
                "Carte",
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
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
            Column(
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
            Column(
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
          ],
        ),
        Column(
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
    VILLE_SUPPORTE ville = VILLE_SUPPORTE.RIMOUSKI;

    if (_villeSelectionne == "Montréal") {
      ville = VILLE_SUPPORTE.MONTREAL;
    } else if (_villeSelectionne == "Québec") {
      ville = VILLE_SUPPORTE.QUEBEC;
    } else {
      ville = VILLE_SUPPORTE.RIMOUSKI;
    }

    var listPublic = _charger.getBalisesPublic(ville);
    var listArt = _charger.getBalisesArt(ville);
    var listParc = _charger.getBalisesParc(ville);

    Set<Marker> toutMarker = Set<Marker>();

    if (_public && listPublic != null) {
      for (int i = 0; i < listPublic.length; ++i) {
        if (listPublic[i] != null) {
          toutMarker.add(listPublic[i].getMarker());
        }
      }
    }

    if (_art && listArt != null) {
      for (int i = 0; i < listArt.length; ++i) {
        if (listArt[i] != null) {
          toutMarker.add(listArt[i].getMarker());
        }
      }
    }

    if (_parc && listParc != null) {
      for (int i = 0; i < listParc.length; ++i) {
        if (listParc[i] != null) {
          toutMarker.add(listParc[i].getMarker());
        }
      }
    }

    // Ajoue position actuelle
    if (initialPosition == null) {
      obtenirPositionInitial();
    } else {
      toutMarker.add(new Marker(
          markerId: MarkerId("1000000"),
          position: LatLng(initialPosition.latitude, initialPosition.longitude),
          infoWindow: InfoWindow(
              title: "Position actuelle", snippet: "Position actuelle")));
    }

    return toutMarker;
  }
}

void obtenirPositionInitial() async {
  initialPosition = await Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
}
