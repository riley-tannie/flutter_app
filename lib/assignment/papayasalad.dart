import 'package:flutter/material.dart';

class Papayasalad extends StatelessWidget {
  const Papayasalad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.purple.shade50,
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top Header
              Container(
                color: Colors.purple,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "Cooking Recipes",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              const SizedBox(height: 8),

              // Title
              const Text(
                "Papaya Salad",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              // Content Row (Text + Image)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side text
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple.shade200),
                      ),
                      child: const Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                        "Soluta ducimus in modi illo ad ipsa non officiis. "
                        "Ea placeat necessitatibus in aliquid ullam quasi porro vel dolores, "
                        "dignissimos quisquam aspernatur.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/salad.jpg',
                          height: 120,
                          fit: BoxFit.cover,
                        ),

                        const SizedBox(height: 8),

                        // Rating stars
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star_border, color: Colors.orange),
                              ],
                            ),
                            const Text("3128 reviews"),
                          ],
                        ),

                        const SizedBox(height: 8),

                        // Prep / Cook / Feeds Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Column(
                              children: [
                                Icon(Icons.schedule, color: Colors.black),
                                Text("PREP:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("5 mins"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.timer, color: Colors.red),
                                Text("COOK:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("10 mins", style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.restaurant, color: Colors.black),
                                Text("FEEDS:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("1-3"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}