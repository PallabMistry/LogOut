import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class exit extends StatefulWidget {
  const exit({Key? key}) : super(key: key);

  @override
  _exitState createState() => _exitState();
}

class _exitState extends State<exit> {
  Future<dynamic> exitDialog(){
    return showDialog(
      context: context,
      builder: (context) =>
          // CupertinoAlertDialog(
          //   title: Text('Are you Sure?'),
          //      content: Text('Do you want to exit from the app?'),
          //        actions: [
          //          CupertinoButton(child: Text('NO'), onPressed:() {
          //            Navigator.of(context).pop(false);
          //          },),CupertinoButton(child: Text('YES'), onPressed:() {
          //            SystemNavigator.pop();
          //          },),
          //
          //        ],
          //
          // ),
          AlertDialog(
              title: Text('Are you Sure?'),
             content: Text('Do you want to exit from the app?'),
        actions: [
          FlatButton(onPressed: () {
            SystemNavigator.pop();
          }, child: Text('YES')),
          FlatButton(onPressed: () {
            Navigator.of(context).pop(false);
          }, child: Text('NO')),

        ],
            backgroundColor: Colors.amberAccent,
     ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
      exitDialog();
      return Future.value(false);
    },
        child: Scaffold(
          appBar: AppBar(centerTitle: true,
            title: Text('Exit'),

          ),

        )
    );
  }
}
