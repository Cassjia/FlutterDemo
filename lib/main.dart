import 'package:flutter/material.dart';
import 'package:first_flutter_app/NewRoute.dart';
import 'package:first_flutter_app/MyCheck.dart';
import 'package:english_words/english_words.dart';
import 'MyTextField.dart';
import 'MyTransForm.dart';
import 'ScrollDemo.dart';
import 'ListViewDemo.dart';
import 'ListViewSeparatorDemo.dart';
import 'ListViewDemo2.dart';
import 'GridViewDemo1.dart';
import 'GridViewDemo2.dart';
import 'CustomSollerViewDemo1.dart';
import 'ScrollerControllerDemo.dart';
import 'WillPopScopeDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "new_page": (context) => new NewRoute(),
        'check': (context) => new MyCheck(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class RandomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomWord = new WordPair.random();
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(randomWord.toString()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState()");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies()");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate()");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose()");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble()");
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget()");
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build()");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('open new Route'),
              textColor: Colors.deepPurple,
              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context){
//                  return new NewRoute();
//                }));
                Navigator.pushNamed(context, 'new_page');
              },
            ),
            RaisedButton(
              child: Text('单选复选'),
              onPressed: () {
                Navigator.pushNamed(context, 'check');
              },
            ),
            RaisedButton(
              child: Text('TextField'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new MyTextField();
                }));
              },
            ),
            RaisedButton(
              child: const Text('TransForm'),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new MyTransForm();
                }));
              },
            ),
            RaisedButton(
              child: const Text('ScrollDemo'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ScrollDemo();
                }));
              },
            ),
            RaisedButton(
              child: const Text('WillPopScopeDemo'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new WillPopScopeDemo();
                }));
              },
            ),
            RandomWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
