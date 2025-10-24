import 'package:flutter/material.dart';

class CoffeeOrderUI extends StatefulWidget {
  const CoffeeOrderUI({super.key});

  @override
  State<CoffeeOrderUI> createState() => _CoffeeOrderUIState();
}

class _CoffeeOrderUIState extends State<CoffeeOrderUI> {
  bool isHot = true; 
  double sugarLevel = 1;

  String get sugarLabel {
    switch (sugarLevel.round()) {
      case 0:
        return "none";
      case 1:
        return "less";
      case 2:
        return "normal";
      default:
        return "normal";
    }
  }

  void _orderCoffee() {
    String type = isHot ? "Hot Coffee" : "Cold Coffee";
    String sugar = sugarLabel;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Your Order"),
        content: Text( "$type with $sugar"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text("MFU Coffee Shop"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Your order",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // Coffee type switch
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Type: Hot", style: TextStyle(fontSize: 18)),
                Switch(
                  value: !isHot,
                  onChanged: (value) {
                    setState(() {
                      isHot = !value;
                    });
                  },
                  activeColor: Colors.purple,
                ),
                const Text("Cold", style: TextStyle(fontSize: 18)),
              ],
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sugar level",
                style: TextStyle(fontSize: 18),
              ),
            ),

            Slider(
              value: sugarLevel,
              min: 0,
              max: 2,
              divisions: 2,
              label: sugarLabel,
              activeColor: Colors.purple,
              onChanged: (value) {
                setState(() {
                  sugarLevel = value;
                });
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: _orderCoffee,
              child: const Text(
                "ORDER",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
