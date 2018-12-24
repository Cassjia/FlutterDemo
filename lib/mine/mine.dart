import 'package:flutter/material.dart';

/**
 * 我的
 */
class mine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new mineState();
  }
}

class mineState extends State<mine> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Image(
                    image:
                        AssetImage('images/common_img_head_empty_circle.png'),
                    width: 80,
                    height: 80,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '   上午好，xxx',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      ' 13813330007',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('images/ic_modify_password_blue.png'),
                  height: 20,
                  width: 20,
                ),
                Text('   角色权限'),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey[300],
            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('images/ic_setting.png'),
                  height: 20,
                  width: 20,
                ),
                Text('   设置'),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey[300],
            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}
