import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String result = '';

  // function for Sum
  void calculateSum() {
    setState(() {
      if (num1Controller.text.isEmpty || num2Controller.text.isEmpty) {
        result = 'Please input both numbers';
        return;
      }

      int? a = int.tryParse(num1Controller.text);
      int? b = int.tryParse(num2Controller.text);

      if (a == null || b == null) {
        result = 'Please input only numbers';
        return;
      }

      result = 'Sum = ${a + b}';
    });
  }

  // function for Power
  void calculatePower() {
    setState(() {
      if (num1Controller.text.isEmpty || num2Controller.text.isEmpty) {
        result = 'Please input both numbers';
        return;
      }

      int? a = int.tryParse(num1Controller.text);
      int? b = int.tryParse(num2Controller.text);

      if (a == null || b == null) {
        result = 'Please input only numbers';
        return;
      }

      result = 'Power = ${pow(a, b)}';
    });
  }

  // function for Clear
  void clearAll() {
    setState(() {
      num1Controller.clear();
      num2Controller.clear();
      result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSum,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Sum', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: calculatePower,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('Power', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: clearAll,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Clear', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 18, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}