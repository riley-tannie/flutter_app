import 'package:flutter/material.dart';

class MultiChildDemo extends StatelessWidget {
  const MultiChildDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //children: [
            //Container(
              //width: 100, height: 100,
              //color: Colors.blueAccent,
            //),
            //Container(
              //width: 100, height: 200,
              //color: Colors.greenAccent,
            //),
            //Container(
              //width: 100, height: 100,
              //color: Colors.deepPurple,
            //)
          //],Using Spacer
          //children: [
            //Container(
              //width: 100, height: 100,
              //color: Colors.blueAccent,
            //), Spacer(flex: 1,),
            //Container(
              //width: 100, height: 200,
              //color: Colors.greenAccent,
            //), Spacer(flex: 2,),
            //Container(
              //width: 100, height: 100,
              //color: Colors.deepPurple,
            //)
          //]
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 100, height: 100,
                color: Colors.blueAccent,
              ),
            ),
            Container(
              width: 100, height: 200,
              color: Colors.greenAccent,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 100, height: 100,
                color: Colors.deepPurple,
              ),
            )
          ]
        )
        ),
    );
  }
}