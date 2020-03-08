import 'package:flutter/material.dart';
import 'package:parcoursa/profil.dart';
import 'categories.dart';
import 'customNavTransition.dart';
import 'parcours.dart';
import 'custom/slide_item.dart';
import 'dart:ui';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

Widget _buildContainer() {
  return Material(
    color: Colors.blue,
    child: InkWell(
      onTap: () => print("Container pressed"), // handle your onTap here
      child: Container(height: 200, width: 200),
    ),
  );
}

class _TrendingState extends State<Trending> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 25.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Parcours",
                  style: TextStyle(
                    fontSize: 63,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Parcours populaires",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Voir tous (46)",
                    style: TextStyle(
                     fontSize: 22,
                     fontWeight: FontWeight.w800,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      CustomNavRoute(
                        builder: (BuildContext context) {
                          return Profil();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 10.0),

            //Horizontal List here
            Container(
              height: MediaQuery.of(context).size.height / 2.4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: parcours == null ? 0 : parcours.length,
                itemBuilder: (BuildContext context, int index) {
                  Map parcour = parcours[index];

                  return Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: SlideItem(
                      img: parcour["img"],
                      title: parcour["title"],
                      address: parcour["address"],
                      rating: parcour["rating"],
                      nbrBalise: parcour["nbrBalise"],
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Catégories",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Voir tous  (13)",
                    style: TextStyle(
                     fontSize: 22,
                     fontWeight: FontWeight.w800,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Trending();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 10.0),

//             //Horizontal List here
            Container(
              height: MediaQuery.of(context).size.height / 6,
              child: ListView.builder(
                primary: false,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories == null ? 0 : categories.length,
                itemBuilder: (BuildContext context, int index) {
                  Map cat = categories[index];

                  return Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            cat["img"],
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.height / 6,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                // Add one stop for each color. Stops should increase from 0 to 1
                                stops: [0.2, 0.7],
                                colors: [
                                  cat['color1'],
                                  cat['color2'],
                                ],
                                // stops: [0.0, 0.1],
                              ),
                            ),
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.height / 6,
                          ),
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 6,
                              width: MediaQuery.of(context).size.height / 6,
                              padding: EdgeInsets.all(1),
                              constraints: BoxConstraints(
                                minWidth: 20,
                                minHeight: 20,
                              ),
                              child: Center(
                                child: Text(
                                  cat["name"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 25.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "À découvrir",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.0),

            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: parcours == null ? 0 : parcours.length,
              itemBuilder: (BuildContext context, int index) {
                Map parcour = parcours[index];

                return Container(
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: SlideItem(
                      img: parcour["img"],
                      title: parcour["title"],
                      address: parcour["address"],
                      rating: parcour["rating"],
                      nbrBalise: parcour["nbrBalise"],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
