import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WillPopState();
  }
}

class WillPopState extends State<WillPopScopeDemo> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: WillPopScope(
          child: Container(
            child: Text('连续点击两次退出'),
          ),
          onWillPop: () async {
            if (_dateTime == null ||
                DateTime.now().difference(_dateTime) > Duration(seconds: 1)) {
              _dateTime = DateTime.now();
              return false;
            } else {
              return true;
            }
          }),
    );
  }
}
