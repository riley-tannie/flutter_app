import 'package:flutter/material.dart';

class Findmatch extends StatefulWidget {
  const Findmatch({super.key});

  @override
  State<Findmatch> createState() => _FindmatchState();
}

class _FindmatchState extends State<Findmatch> {
  //state variables create
  String message = 'Love is in the air';
  int count = 0;

  void toggling(){
    setState(() {
      message = (message == 'Love is in the air') ? 'Finding your matchs' : 'Love is in the air';
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MatchMaking App', 
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Text( 
            //'Counter = $count', 
            message,
            style: TextStyle(fontSize: 22, color: Color.fromARGB(255,175,111,9)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: toggling,
          //(){
            //print('You are finding a match');
            //debugPrint('only run in debug mode, not in release version'); prefer
            //setState(() {
              //message = 'Finding your matches';
            //});
          //}, 
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.add, color: Colors.white,),),
    );
  }
}