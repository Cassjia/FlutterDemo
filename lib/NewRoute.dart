import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';


class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('new Route'),
      ),
      body: Center(
        child:Column(
          children: <Widget>[
            Text('HelloWorld',style: TextStyle(color: Colors.black,decoration: TextDecoration.lineThrough,decorationColor: Colors.red,fontFamily: '微软雅黑',fontStyle: FontStyle.italic),),
            RaisedButton(child: Text('RaisedButton'),color:Colors.blue,textColor:Colors.white,onPressed: ()=>{},),
            FlatButton(child: Text('FlatButton'),color: Colors.blue,onPressed: ()=>{},),
            OutlineButton(child: Text('OutlineButton'),onPressed: ()=>{},color: Colors.blue,highlightedBorderColor: Colors.blue,),
            IconButton(icon: Icon(Icons.account_circle),onPressed:()=>{},),
//          Image(image: AssetImage('images/home.png'),
//                width: 100.0,
//
//          ),
            Image(image: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'),
            width: 100.0,
            height: 200.0,
//            fit: BoxFit.fitWidth,
            color: Colors.limeAccent,
            colorBlendMode: BlendMode.softLight,
              repeat: ImageRepeat.repeat,
            ),
            Icon(Icons.fingerprint,color: Colors.yellowAccent,size: 100.0,)
          ],
//          child: Text('HelloWorld',style: TextStyle(color: Colors.black,decoration: TextDecoration.lineThrough,decorationColor: Colors.red,fontFamily: '微软雅黑',fontStyle: FontStyle.italic),),

        ),
//        child: Text('This is a Route'*2,textAlign: TextAlign.center,maxLines: 1,overflow: TextOverflow.ellipsis,textScaleFactor:2),

      ),

    );
  /* return Stack(
     alignment: AlignmentDirectional.bottomCenter,
    textDirection: null,
    children: <Widget>[
      Text('Hello world'),
//      Text("Hell World"),
    ],
overflow: Overflow.clip,
   );*/
/*  return Scaffold(
//    bottomNavigationBar: Text('1'),
    backgroundColor: Colors.lightGreenAccent,
  );*/
/* return CupertinoPageScaffold(
   navigationBar: CupertinoNavigationBar(
     middle: Text("Cupertino Demo"),
   ),
   child: Center(
     child: CupertinoButton(
         color: CupertinoColors.activeBlue,
         child: Text("Press"),
         onPressed: () {}
     ),
   ),
 );*/
  }
}
