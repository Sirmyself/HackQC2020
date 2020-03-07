import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Parcour extends StatefulWidget {
  final String img;
  final String title;
  final String address;
  final String rating;
  final int nbrBalise;

  Parcour(
      {Key key,
      @required this.img,
      @required this.title,
      @required this.address,
      @required this.rating,
      @required this.nbrBalise})
      : super(key: key);

  @override
  _ParcourState createState() => _ParcourState();
}

class _ParcourState extends State<Parcour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 3.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      "${widget.img}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 30.0,
                  right: 6.0,
                  child: Card(
                    color: Colors.pinkAccent[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            LineIcons.heart,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            " ${widget.rating} ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${widget.title}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 7.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${widget.address}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: Colors.white,
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          LineIcons.flag_checkered,
                          color: Colors.blue,
                          size: 65,
                        ),
                        Text(
                          widget.nbrBalise.toString(),
                          style: TextStyle(
                            fontSize: 55,
                            color: Colors.blue
                          ),
                        )
                      ],
                    ) ,
                  ),
                ),
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  color: Colors.greenAccent,
                  child: Container(

                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          LineIcons.play_circle,
                          color: Colors.white,
                          size: 65,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
