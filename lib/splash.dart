import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '丁管家',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: splashOne(),
    );
  }
}

class splashOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new splashState();
  }
}

class splashState extends State<splashOne> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0.0),
        constraints: BoxConstraints(minWidth: double.infinity),
        child: GestureDetector(
          //设置页面点击事件
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            print('===================DragUpdateDetails============' +
                details.delta.dx.toString());
            if (details.delta.dx < -2) {
              /*   Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => new HomePage()),
              (Route<dynamic> rout) => false);*/
              /*  Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new splashTwo();
              }));*/
              Navigator.push(context, PageRouteBuilder(pageBuilder:
                  (BuildContext context, Animation animation,
                      Animation secondaryAnimation) {
                return new FadeTransition(
                  //使用渐隐渐入过渡,
                  opacity: animation,
                  child: new splashTwo(), //路由B
                );
              }));
            }
          },
          child: Image.asset(
            "images/home_img_guide_one.png",
            fit: BoxFit.cover,
          ),
        ),
      ),

      //此处fit: BoxFit.cover用于拉伸图片,使图片铺满全屏
    );
  }

  //页面初始化状态的方法
  @override
  void initState() {
    super.initState();
  }
}

class splashTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new splashTwoState();
  }
}

class splashTwoState extends State<splashTwo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0.0),
        constraints: BoxConstraints(minWidth: double.infinity),
        child: GestureDetector(
          //设置页面点击事件
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            print('===================DragUpdateDetails============' +
                details.delta.dx.toString());
            if (details.delta.dx < -2) {
              /*   Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => new HomePage()),
              (Route<dynamic> rout) => false);*/
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new splashThree();
              }));
            }
          },
          child: Image.asset(
            "images/home_img_guide_two.webp",
            fit: BoxFit.cover,
          ),
        ),
      ),
      //此处fit: BoxFit.cover用于拉伸图片,使图片铺满全屏
    );
  }
}

class splashThree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new splashThreeState();
  }
}

class splashThreeState extends State<splashThree> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0.0),
        constraints: BoxConstraints(minWidth: double.infinity),
        child: GestureDetector(
          //设置页面点击事件
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            print('===================DragUpdateDetails============' +
                details.delta.dx.toString());
            if (details.delta.dx < -2) {
              /*   Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => new HomePage()),
              (Route<dynamic> rout) => false);*/
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new splashFour();
              }));
            }
          },
          child: Image.asset(
            "images/home_img_guide_three.webp",
            fit: BoxFit.cover,
          ),
        ),
      ),

      //此处fit: BoxFit.cover用于拉伸图片,使图片铺满全屏
    );
  }
}

class splashFour extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new splashFourState();
  }
}

class splashFourState extends State<splashFour> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0.0),
        constraints: BoxConstraints(minWidth: double.infinity),
        child: GestureDetector(
          //设置页面点击事件
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            print('===================DragUpdateDetails============' +
                details.delta.dx.toString());
            if (details.delta.dx < -2) {
              /*   Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => new HomePage()),
              (Route<dynamic> rout) => false);*/
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new splashFive();
              }));
            }
          },
          child: Image.asset(
            "images/home_img_guide_four.webp",
            fit: BoxFit.cover,
          ),
        ),
      ),

      //此处fit: BoxFit.cover用于拉伸图片,使图片铺满全屏
    );
  }
}

class splashFive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new splashFiveState();
  }
}

class splashFiveState extends State<splashFive> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0.0),
        constraints: BoxConstraints(minWidth: double.infinity),
        child: GestureDetector(
          //设置页面点击事件
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            print('===================DragUpdateDetails============' +
                details.delta.dx.toString());
            if (details.delta.dx < -2) {
              /*   Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => new HomePage()),
              (Route<dynamic> rout) => false);*/
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new HomePage();
              }));
            }
          },
          child: Image.asset(
            "images/home_img_guide_five.webp",
            fit: BoxFit.cover,
          ),
        ),
      ),
      //此处fit: BoxFit.cover用于拉伸图片,使图片铺满全屏
    );
  }
}
