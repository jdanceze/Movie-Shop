import 'package:flutter/material.dart';

import './ItemContainer.dart';
import './Movie.dart';
import './SecondRoute.dart';
import 'ThirdRoute.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int sum = 0;
  int i = 0;
  Color cal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          //
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdRoute()),
              );
            },
            color: Colors.purple,
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: <Widget>[
                ListView.builder(
                  itemCount: Movies.length,
                  itemBuilder: (context, index) => ItemContainer(
                    itemIndex: index,
                    movie: Movies[index],
                    color:  Movies[index].isSelected == true
                        ? Colors.amber
                        : Colors.white,
                    //press: () => total(context, Movies[index],index),
                    press: () {
                      total();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondRoute(
                                  itemIndex: index,
                                  movie: Movies[index],
                                )),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  total() {
    //Movies[index].isSelected == true ? sum -= movie.price : sum += movie.price;
    setState(() {
      i++;
    });
  }
}
