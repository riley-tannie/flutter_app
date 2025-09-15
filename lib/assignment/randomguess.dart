import 'dart:math';
import 'package:flutter/material.dart';

class Randomguess extends StatefulWidget {
  const Randomguess({super.key});

  @override
  State<Randomguess> createState() => _RandomguessState();
}

class _RandomguessState extends State<Randomguess> {
  final TextEditingController guessController = TextEditingController();
  String message = '';
  late int answer;
  int chances = 3;
  bool gameOver = false;

  @override
  void initState() {
    super.initState();
    replay(); // generate first random number
  }

  void replay() {
    setState(() {
      answer = Random().nextInt(10); // new random number 0-9
      chances = 3;
      message = '';
      gameOver = false;
      guessController.clear();
    });
  }

  void checkGuess() {
    int? guess = int.tryParse(guessController.text);

    if (guess == answer) {
      setState(() {
        message = 'Correct, You win!';
        gameOver = true;
      });
    } else {
      chances--;
      if (chances == 0) {
        setState(() {
          message = 'Sorry, you lose. The answer is $answer';
          gameOver = true;
        });
      } else {
        setState(() {
          message = guess! < answer
              ? 'Too small! ($chances chances left)'
              : 'Too large! ($chances chances left)';
        });
      }
    }
    guessController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guessing Game')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Guess a number game", style: TextStyle(fontSize: 20),),
            TextField(
              controller: guessController,
              decoration: const InputDecoration(
                hintText: 'Enter your guess (0-9)',
              ),
              enabled: !gameOver,
            ),
            const SizedBox(height: 20),
            Text(message, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10,),
            if (!gameOver)
              ElevatedButton(
                onPressed: checkGuess,
                child: Text('Guess'),
              ),
            if (gameOver)
              ElevatedButton(
                onPressed: replay,
                child: Text('Replay'),
              ),
          ],
        ),
      ),
    );
  }
}