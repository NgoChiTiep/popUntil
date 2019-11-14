import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popuntil/screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("màn 1",style: TextStyle(color: Colors.white)),
              RaisedButton(
                child: Text('next screen'),
                onPressed: ()=> _nextScreen(),
              ),
            ],
          ),
        );
  }
  _nextScreen(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
  }
}