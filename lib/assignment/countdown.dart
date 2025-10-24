import 'dart:async';
import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  double timeLeft = 1.00; 
  Timer? timer;

  void startTimer() {
    timer?.cancel();
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

  void resetTimer() {
    timer?.cancel();
    setState(() {
      timeLeft = 1.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              timeLeft.toStringAsFixed(2),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.symmetric(horizontal: 20)),
                  onPressed: startTimer,
                  icon: Icon(Icons.play_arrow),
                  label: Text("Start", style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 20)),
                  onPressed: resetTimer,
                  icon: Icon(Icons.refresh),
                  label: Text("Reset", style: TextStyle(color: Colors.white),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}