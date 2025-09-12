import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String message = '';

  // function
  void checkLogin() {
    setState(() {
      if (userController.text == 'admin' && passController.text == '1234') {
        message = 'Welcome admin';
      } else {
        message = 'Wrong username or password';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              child: const Text('Login', 
              style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 20),
            Text(message, style: const TextStyle(fontSize: 18, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}