import 'package:flutter/material.dart';

class Matchm extends StatelessWidget {
  const Matchm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MatchMaking App', 
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Text('Love is in the air', 
            style: TextStyle(fontSize: 22, color: Color.fromARGB(255,175,111,9)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null, 
          backgroundColor: Colors.pinkAccent,
          child: Icon(Icons.add, color: Colors.white,),),
    );
  }
}