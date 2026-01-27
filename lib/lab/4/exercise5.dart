import 'package:flutter/material.dart';

class Exercise5 extends StatelessWidget {
  const Exercise5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Exercise 5 - Common UI Fixes")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Correct ListView inside Column",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 10),

                ListView.builder(
                  shrinkWrap: true, //ListView tự co lại theo content
                  physics: const NeverScrollableScrollPhysics(), //tránh scroll lồng scroll
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.movie),
                      title: Text("Movie ${String.fromCharCode(65 + index)}"),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
