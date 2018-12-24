import 'package:flutter/material.dart';
import 'dart:developer';

class MyTextField extends StatefulWidget {
  /* @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyTextFieldState();
  }*/
  @override
  MyTextFieldState createState() => new MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _textEditingController.addListener(() {
      print("MyTextField==>" + _textEditingController.text);
    });
    _textEditingController.text = "贾志强大大";
    _textEditingController.selection = TextSelection(
        baseOffset: 2, extentOffset: _textEditingController.text.length);
    print("MyTextField==>initState()");
  }

  TextEditingController _textEditingController = new TextEditingController();
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.ac_unit),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: '用户名或邮箱',
                prefixIcon: Icon(Icons.accessibility),
                suffixIcon: Icon(Icons.cancel),
              ),
              controller: _textEditingController,
              focusNode: focusNode1,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: '请输入密码',
                  prefixIcon: Icon(Icons.fingerprint)),
              obscureText: true,
//              keyboardType:TextInputType.phone ,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              maxLength: 10,
              maxLengthEnforced: false,
              enabled: true,
              cursorWidth: 1,
//              cursorRadius: Radius.circular(5),
              cursorColor: Colors.lightGreenAccent,
              /* onChanged: (str){
//              debugger(when: str!=null);
              print(str);
              },*/
              focusNode: focusNode2,
            ),
            RaisedButton(
              child: Text('移动焦点'),
              onPressed: () {
                if (null == focusScopeNode) {
                  focusScopeNode = FocusScope.of(context);
                }

                focusScopeNode.requestFocus(focusNode2);
              },
            ),
            RaisedButton(
              child: Text('隐藏键盘'),
              onPressed: () {
                focusNode1.unfocus();
                focusNode2.unfocus();
              },
            ),
          ],
        ),
      ),
    );
  }
}
