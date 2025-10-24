import 'dart:async';
import 'package:flutter/material.dart';

class ClickGame extends StatefulWidget {
  const ClickGame({super.key});

  @override
  State<ClickGame> createState() => _ClickGameState();
}

class _ClickGameState extends State<ClickGame> {
  double timeLeft = 1.00;
  int clicks = 0;
  Timer? timer;

  void playGame() {
    timer?.cancel();
    setState(() {
      timeLeft = 1.00;
      clicks = 0;
    });
    timer = Timer.periodic(const Duration(milliseconds: 10), (t) {
      setState(() {
        timeLeft -= 0.01;
        if (timeLeft <= 0) {
          timeLeft = 0;
          timer?.cancel();
        }
      });
    });
  }

  void addClick() {
    if (timeLeft > 0) {
      setState(() => clicks++);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(timeLeft.toStringAsFixed(2),
                style: TextStyle(fontSize: 28, color: Colors.red)),
            const SizedBox(height: 10),
            Text("Click = $clicks",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, padding: const EdgeInsets.symmetric(horizontal: 20)),
                  onPressed: addClick,
                  icon: Icon(Icons.touch_app),
                  label: Text("Click"),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: playGame,
                  icon: Icon(Icons.refresh),
                  label: Text("PLAY"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}