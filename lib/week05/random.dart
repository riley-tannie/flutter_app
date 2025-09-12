import 'package:flutter/material.dart';
import 'dart:math';

class Random extends StatefulWidget {
  const Random({super.key});

  @override
  State<Random> createState() => _RandomState();
}
  String message = '';
  TextEditingController tcMin = TextEditingController();
  TextEditingController tcMax = TextEditingController();

  void generateRandom(){
    int? min = int.tryParse(tcMin.text);
    int? max = int.tryParse(tcMax.text);
      if (min == null || max == null || min > max) {
          setState(() {
          message = 'Please check your inputs';
      });
    } else{
      int random = min + Random().nextInt();
      setState((){
        message = '$random';
      });
    }
  }

  void clear(){
    setState((){
      tcMax.clear();
      tcMin.clear();
      message = '';
    });
  }
  
  void setState(Null Function() param0) {
  }

class _RandomState extends State<Random> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Random Integer Number'),
              TextField(
                controller: tcMin, 
                decoration: InputDecoration(hintText: 'min') ,),
              TextField(
                controller: tcMax,
                decoration: InputDecoration(hintText: 'max') ,),
              SizedBox(height: 8,),
              Text(message, style: TextStyle(fontSize: 20),),
              SizedBox(height: 8,),
              FilledButton(onPressed: generateRandom,
               child: Text('generate')),
              FilledButton(onPressed: clear, 
               child: Text('clear'))
            ],
          ),
        ),
      ),
    );
  }
}