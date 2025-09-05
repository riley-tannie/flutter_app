import 'package:flutter/material.dart';

class DataInput extends StatefulWidget {
  const DataInput({super.key});

  @override
  State<DataInput> createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {
  String message = '';
  TextEditingController tc = TextEditingController();

  //function
  void updateText(){
    setState(() {
      message = tc.text;
  });
  }
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
              decoration: InputDecoration(hintText: 'Enter your name: '),
              controller: tc,
            ),
            ElevatedButton(
              onPressed: () => updateText(), //better with parameters
              child: Text('Finding your Matches')),
            Text(message),
          ],
        ),
    );
  }
}

//onChanged: (String txt){
                //setState(() {
                  //message = txt;
                //});
              //},