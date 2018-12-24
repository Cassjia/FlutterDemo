import 'package:flutter/material.dart';

class GridViewDemo2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GridState();
  }
}

class GridState extends State<GridViewDemo2> {
  List<IconData> _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initIcons();
  }

  /**
   * 加载iconData
   */
  void _initIcons() {
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        _list.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access,
          Icons.cake,
          Icons.free_breakfast,
        ]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1.0),
          itemCount: _list.length,
          itemBuilder: (contex, index) {
            if (index == _list.length - 1 && _list.length < 200) {
              _initIcons();
            }
            return Icon(_list[index]);
          }),
    );
  }
}
