import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("màn 3",style: TextStyle(color: Colors.white)),
              RaisedButton(
                child: Text('next screen'),
                onPressed: ()=> _nextScreen(),
              ),
            ],
          ),
        );
  }
  _nextScreen(){
     Navigator.popUntil(context, ModalRoute.withName('/screen1'));
  }
}