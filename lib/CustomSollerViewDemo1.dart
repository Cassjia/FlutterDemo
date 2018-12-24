import 'package:flutter/material.dart';

class CustomSollerViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: false,
            pinned: true,
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo',style: TextStyle(color: Colors.yellowAccent),),

              background: Image.asset(
                'images/bing.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建子widget
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },childCount: 50),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //Grid按两列显示
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0,
                ),),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate((BuildContext contex,int index){
              return new Container(
                alignment: Alignment.center,
                color: Colors.orange[100*(index%9)],
                child: new Text('list item $index'),
              );
            },childCount: 50),
          ),
        ],
      ),
    );
  }
}
