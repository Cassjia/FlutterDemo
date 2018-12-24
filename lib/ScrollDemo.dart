import 'package:flutter/material.dart';

class ScrollDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var str='abcdefghigklmnopqrstuvwxyz';

    return  Scaffold(
      backgroundColor: Colors.brown[600],
      appBar: AppBar(
        centerTitle: true,
        textTheme: TextTheme(display1: TextStyle(color: Colors.white,),body1: TextStyle(color:Colors.white)),
        title: Text('SrcollView'),
        backgroundColor: Colors.brown[600],
      ),
      body:  Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: str.split("").map((c) => Text(c, textScaleFactor: 3.0,)).toList(),
            ),
          ),
        ),

      ),
    );
  }
}