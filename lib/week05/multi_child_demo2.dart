import 'package:flutter/material.dart';

class MultiChildDemo2 extends StatelessWidget {
  const MultiChildDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 1,),
             Container(
                width: 100, height: 100,
                color: Colors.blueAccent,
            ),
            Container(
              width: 200, height: 200,
              color: Colors.greenAccent,
            ), Spacer(flex: 2,),
            Container(
                width: 100, height: 100,
                color: Colors.deepPurple,
              ),
            
          ]
        )
        ),
    );
  }
}