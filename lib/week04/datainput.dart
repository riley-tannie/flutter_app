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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name: ',
                  suffixIcon: IconButton(onPressed: tc.clear,
                  icon: Icon(Icons.clear))
                  ),
                controller: tc,
              ),
            ),
            ElevatedButton(
              onPressed: () => updateText(), //better with parameters
              child: Text('Finding your Matches')
            ),
              SizedBox(height: 16,),
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