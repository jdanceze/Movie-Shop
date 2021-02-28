import 'package:flutter/material.dart';

import './Movie.dart';

class ThirdRoute extends StatelessWidget {
  int sum = 0;
  int i =0;
  String name = '';
  Movie movie;
  int callForLoop(){

    for(movie in Movies){
      if(movie.isSelected){
        sum+=movie.price;
      }
    }
  return sum;
  }

  String callForName(){

    for(movie in Movies){
      if(movie.isSelected){
        name+=movie.title;
        name += '\n';
      }
    }
    return name;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Total"),
      ),
      body: Center(
        child: Text(
          '${callForName()}\nTotal: ${callForLoop()}',
          style: TextStyle(
              fontSize: 25,
              color: Colors.black),
        ),

      ),
    );
  }
}
