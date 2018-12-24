import 'package:flutter/material.dart';

class ScrollerControllerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ScrollerState();
  }
}

class ScrollerState extends State<ScrollerControllerDemo> {
  ScrollController _scrollController = new ScrollController();
  bool _isShowUp = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset < 1000 && _isShowUp) {
        setState(() {
          _isShowUp = false;
        });
      } else if (_scrollController.offset > 1000 && !_isShowUp) {
        setState(() {
          _isShowUp = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('List item $index'),
            );
          },
          itemExtent: 50,
          itemCount: 100,
          controller: _scrollController,
        ),
        floatingActionButton: !_isShowUp
            ? null
            : FloatingActionButton(
                child: Icon(Icons.arrow_upward),
                onPressed: () {
                  _scrollController.animateTo(.0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
              ));
  }
}
