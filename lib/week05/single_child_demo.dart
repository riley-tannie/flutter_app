import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  const SingleChildDemo
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 800, height: 60, color: Colors.pinkAccent,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(8),
          alignment: Alignment.center,
          //alignment: Alignment(x,y) center is 0,0
          //appBar: AppBar(title: Text('My App'),)
          child: Text(
            'Matched Profiles', 
            style: TextStyle(color: Colors.white),),
          
        ),
      ),
    );
  }
}