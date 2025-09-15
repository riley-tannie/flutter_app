import 'package:flutter/material.dart';

class Appinterface extends StatelessWidget {
  const Appinterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              children: [
                const Text(
                  'Wedding Organizer',
                  style: TextStyle(
                      fontFamily: 'Sevillana',color: Colors.white,fontSize: 30),
                ),
                SizedBox(height: 5),
                Text('Pre-wedding, Photo, Party',
                  style: TextStyle(fontFamily: 'Sevillana',color: Colors.white,fontSize: 22),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {}, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  child: Text(
                    'Our Services',style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                '333 Moo1 Thasut Chiang Rai, Thailand',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}