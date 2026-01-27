import 'package:flutter/material.dart';

class CoreWidgetDemo extends StatelessWidget {
  const CoreWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 1 – Core Widgets")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Headline Text
            const Text(
              "Welcome to Flutter UI",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            // 2. Icon (Material Icons)
            const Center(
              child: Icon(Icons.movie, size: 64, color: Colors.blue),
            ),

            const SizedBox(height: 16),

            Center(child: Image.asset("assets/images/haicau.jpg", fit: BoxFit.cover)),

            const SizedBox(height: 16),

            // 4. Card + ListTile
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: Icon(Icons.star),
                title: Text("Movie Item"),
                subtitle: Text("This is a sample ListTile inside a Card."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
