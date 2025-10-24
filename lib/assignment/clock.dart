import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "Tourist Place",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Image.asset(
                'assets/images/clock-tower.jpg',
                height: 180,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chiang Rai Clock Tower",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Chiang Rai, Thailand",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.red),
                      SizedBox(width: 4),
                      Text("559"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.call, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("CALL", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.near_me, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("ROUTE", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.share, color: Colors.blue),
                      SizedBox(height: 4),
                      Text("SHARE", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
                "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia "
                "deserunt mollit anim id est laborum.",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}