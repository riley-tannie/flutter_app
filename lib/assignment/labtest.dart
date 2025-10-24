import 'package:flutter/material.dart';

class Labtest extends StatefulWidget {
  const Labtest({super.key});

  @override
  State<Labtest> createState() => _LabtestState();
}

class _LabtestState extends State<Labtest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Iron-Man-icon.png'),
              ),
              SizedBox(height: 20,),
              Text("John Doe",
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              Text("FLUTTER DEVELOPER",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              SizedBox(height: 20),
              Divider(color: Colors.white, thickness: 1, indent: 50, endIndent: 50),
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.teal),
                  title: const Text("+123 456 7890"),
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.teal),
                  title: const Text("johndoe@email.com"),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.facebook),
                    Text(' FaceBook: '),
                    SizedBox(width: 50,),
                    Icon(Icons.report_gmailerrorred),
                    Text('Gmail')
                  ],
                ),
              ),
              Spacer(),
              Text('Contact me: ', style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
        ),
      );
    }
  }
