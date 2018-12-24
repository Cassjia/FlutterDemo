import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewDemo2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListState();
  }
}

class ListState extends State<ListViewDemo2> {
  static const loadingTag = "##loading##"; //标为标记
  var _words = <String>[loadingTag];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ListViewLoading'),
        backgroundColor: Colors.deepOrange,
      ),
      body: RefreshIndicator(
          child: ListView.separated(
            itemBuilder: (context, index) {
              if (_words[index] == loadingTag) {
                if (_words.length - 1 < 100) {
                  _retrieveData();
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.0,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(
                      '没有更多了',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  );
                }
              }
              //显示单词列表项
              return ListTile(title: Text(_words[index]));
            },
            separatorBuilder: (context, index) => Divider(height: .0),
            itemCount: _words.length,
            controller: _scrollController,
          ),
          onRefresh: (){
            _refreshData();
          },displacement: 20.0,color: Colors.deepPurple,),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {
        //重新构建列表
      });
    });
  }

  void _refreshData(){
    Future.delayed(Duration(seconds: 2)).then((e){
      _words.removeRange(1, _words.length);
      _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {
        //重新构建列表
      });
//      _retrieveData();
    });
  }
}
