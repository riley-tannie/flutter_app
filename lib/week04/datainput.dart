import 'package:flutter/material.dart';

class DataInput extends StatefulWidget {
  const DataInput({super.key});

  @override
  State<DataInput> createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {
  String message = 'text';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('One Step Closer to your love'),
        backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (String txt){
                setState(() {
                  message = txt;
                });
              },
            ),
            Text(message),
          ],
        ),
    );
  }
}