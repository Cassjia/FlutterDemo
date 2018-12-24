import 'package:flutter/material.dart';

class MyTransForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('TransForm'),
      backgroundColor: Colors.lightGreenAccent,
    ),
      body: Padding(padding: EdgeInsets.fromLTRB(50.0, 50.0, 10.0, 10.0),child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
       /*   Container(
            color: Colors.grey,
            child: Transform(alignment:Alignment.topRight,transform: Matrix4.skewY(2.5),child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.yellow,
              child: const Text('TransForm'),
            ),),
          ),*/
      /*    DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
//            border: Border(bottom: BorderSide(width: 10)),
            gradient: LinearGradient(colors:[Colors.red[900],Colors.orange[100]]), //背景渐变

          ),
        child: Transform.translate(offset: Offset(5, 6),child: Text('Hello World'),),

          ),*/
      Container(
        width: 200,
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.orange,Colors.orange[200]]),
          boxShadow: [ //卡片阴影
            BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0
            )
          ],

        ),


        transform: Matrix4.rotationZ(0.2),
        alignment: Alignment.center,
        child: const Text('5.20',style: TextStyle(color: Colors.white,fontSize: 40.0),),
      ),
        ],
      ) ,),

    );
  }

}