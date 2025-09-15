import 'package:flutter/material.dart';

class Sum extends StatefulWidget {
  const Sum({super.key});

  @override
  State<Sum> createState() => _SumState();
}

class _SumState extends State<Sum> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  String message = '';

  void calculate() {
    int? num1 = int.tryParse(num1Controller.text);
    int? num2 = int.tryParse(num2Controller.text);

    if (num1 == null || num2 == null) {
      setState(() {
        message = 'Incorrect Inputs';
      });
    } else {
      setState(() {
        message = 'Result = ${num1 + num2}';
      });
    }
  }

  void clear() {
    num1Controller.clear();
    num2Controller.clear();
    setState(() {
      message = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Summation App")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: num1Controller,
                    decoration: InputDecoration(
                      hintText: "First number",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "+",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: num2Controller,
                    decoration: InputDecoration(
                      hintText: "Second number",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calculate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text("Calculate"),
                ),
                ElevatedButton(
                  onPressed: clear,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text("Clear"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              message,
              style: const TextStyle(
                  fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}