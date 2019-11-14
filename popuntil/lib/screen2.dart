import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("màn 2", style: TextStyle(color: Colors.white),),
              RaisedButton(
                child: Text('next screen'),
                onPressed: ()=> _nextScreen(),
              ),
            ],
          ),
        );
  }
  _nextScreen(){
      //  Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
      Navigator.pushNamed(context, "/screen3");
  }
}