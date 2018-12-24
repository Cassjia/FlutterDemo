import 'package:flutter/material.dart';
import 'contact/contact.dart';
import 'message/message.dart';
import 'workBence/workBence.dart';
import 'discover/discovery.dart';
import 'mine/mine.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['消息', '通讯录', '工作台', '发现', '我的'];

  /*
   * 存放三个页面，跟fragmentList一样
   */
  var _pageList;

  /*
   * 根据选择获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  /*Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff1296db)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }*/

  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 40.0, height: 40.0);
  }

  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
    tabImages = [
      [getTabImage('images/xiaoxi.png'), getTabImage('images/xiaoxi_2.png')],
      [
        getTabImage('images/tongxunlu.png'),
        getTabImage('images/tongxunlu_2.png')
      ],
      [getTabImage('images/gztai.png'), getTabImage('images/gztai_2.png')],
      [getTabImage('images/faxian.png'), getTabImage('images/faxian_2.png')],
      [getTabImage('images/wode.png'), getTabImage('images/wode_2.png')],
    ];
    /*
     * 子界面
     */
    _pageList = [
      new message(),
      new contact(),
      new workBence(),
      new discovery(),
      new mine(),
    ];
  }

  Image selectAction(int curIndex) {
    if (curIndex == 0) {
      return Image(
        image: AssetImage('images/common_icon_add_white.png'),
        width: 20,
        height: 20,
      );
    } else {
      return Image(
        image: AssetImage('images/common_icon_add_white.png'),
        width: 0,
        height: 0,
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    initData();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(appBarTitles[_tabIndex]),
        leading: Text(''),
        actions: <Widget>[
        /*  Image(
            image: AssetImage('images/common_icon_add_white.png'),
            width: 20,
            height: 20,
          ),*/
          selectAction(_tabIndex),
        ],
      ),
      body: _pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: getTabIcon(0),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          new BottomNavigationBarItem(
              icon: getTabIcon(1),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          new BottomNavigationBarItem(
              icon: getTabIcon(2),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          new BottomNavigationBarItem(
              icon: getTabIcon(3),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
          new BottomNavigationBarItem(
              icon: getTabIcon(4),
              title: Text(
                "",
                style: TextStyle(fontSize: 0),
              )),
        ],
        currentIndex: _tabIndex,
        iconSize: 40.0,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
        /* Material(
          color: Colors.white,
          child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              controller: _controller,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black26,
              labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
//            indicatorWeight: 0.0,
              tabs: <Widget>[
                new Tab(
                  text: "消息",
                  icon: new Image(
                    image: AssetImage("images/xiaoxi_2.png"),
                    height: 50,
                  ),
                ),
                new Tab(
                  text: "通讯录",
                  icon: new Image(
                    image: AssetImage("images/tongxunlu_2.png"),
                    height: 50,
                  ),
                ),
                new Tab(
                  text: "工作台",
                  icon: new Image(
                    image: AssetImage("images/gztai_2.png"),
                    height: 50,
                  ),
                ),
                new Tab(
                  text: "发现",
                  icon: new Image(
                    image: AssetImage("images/faxian_2.png"),
                    height: 50,
                  ),
                ),
                new Tab(
                  text: "我的",
                  icon: new Image(
                    image: AssetImage("images/wode_2.png"),
                    height: 50,
                  ),
                ),
              ]),
        ),*/
      ),
    );
  }
}
