import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 140, 223),
      appBar: AppBar(title: Text('My Profile', 
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true, //adding to center but ios is default
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                  'https://icons.iconarchive.com/icons/bambulu/sailor-moon/256/sailor-venus-icon.png'
              ),
              ),
            ),
            Divider(color: Colors.pinkAccent,height: 40,),
            Text('Name', style: TextStyle(color: Colors.white, fontSize: 16),),
            Text('Phuwin Tangsukyen', style: TextStyle(color: Colors.pink, fontSize: 20),),
            SizedBox(height: 20,),
            Text('Age', style: TextStyle(color: Colors.white, fontSize: 16),),
            Text('22', style: TextStyle(color: Colors.pink, fontSize: 20),),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.email), Text('phuwintang@gmail.com', style: TextStyle(color: Colors.pink, fontSize: 16),)
              ],
            )
          ],
        ),
      ),
    );
  }
}