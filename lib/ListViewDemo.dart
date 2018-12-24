import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    var str='ashidfhcnxcbdshh777';
    List<String> list=str.split('').toList();
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        return ListTile(title: Text('$index'+list.asMap().toString()),);
      },itemCount: 100,itemExtent: 50,),
    );
  }
}