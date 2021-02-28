import 'package:flutter/material.dart';

import './Movie.dart';
import './shop.dart';
class SecondRoute extends StatefulWidget {
  final int itemIndex;
  final Movie movie;

  // final Function press;
  //final Color color;

  const SecondRoute({
    Key key,
    this.itemIndex,
    this.movie,
    //this.press,
    //this.color
  }) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int sum = 0;
  Shop shop;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(widget.movie.image),
            Text(
              widget.movie.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
            Text(
              'Movie Price: ${widget.movie.price}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
            Text(
              'Movie Detail: ${widget.movie.spec}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            RaisedButton(
              onPressed: () {
                widget.movie.isSelected=true;

                //sum+=widget.movie.price;

              },
              color: Colors.blue,
              child: Text(
                'Yes',
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {
              widget.movie.isSelected=false;

              },
              color: Colors.orange,
              child: Text(
                'No',
                style: TextStyle(color: Colors.white),
              ),
            ),

          ],
        ),
        /*child: Image.asset(
          widget.movie.image,
          fit: BoxFit.fitWidth,

        ),*/
      ),
    );
  }


}
