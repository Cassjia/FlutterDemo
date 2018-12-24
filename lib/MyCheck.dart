import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
/**
 * 单选复选demo
 */
class MyCheck extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyCheckState();
  }
}

class MyCheckState extends State<MyCheck> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Align(
        alignment:Alignment.centerLeft ,
       child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Theme(data: ThemeData.light(),child: Text('CheckBox_Switch'),),
            Switch(value: _switchSelected, onChanged: (bool){
              setState(() {
                _switchSelected=bool;
              });
            },
              activeColor: Colors.cyan,
            ),
            Checkbox(value: _checkboxSelected,
        onChanged: (value){
          setState(() {
            _checkboxSelected=value;
          });
        },
          activeColor: Colors.redAccent,
        ),
          ],
        ),
      ),

    );
  }
}
