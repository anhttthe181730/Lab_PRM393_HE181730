import 'package:flutter/material.dart';
import '../../models/Location.dart';
import '../../ui/pages/Page2.dart';

class DetailLocationPage extends StatelessWidget {
  final Location location;
  final int count;
  final bool isStarred;

  const DetailLocationPage({
    super.key,
    required this.location,
    required this.count,
    required this.isStarred,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Layout Demo"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Page2()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              location.image,
              width: double.infinity,
              height: 340,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          location.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          location.address,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: isStarred ? Colors.amber : Colors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text("$count"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _ActionItem(
                    icon: Icons.call,
                    label: "CALL",
                    color: Colors.yellow,
                  ),
                  _ActionItem(
                    icon: Icons.near_me,
                    label: "ROUTE",
                    color: Colors.yellow,
                  ),
                  _ActionItem(
                    icon: Icons.share,
                    label: "SHARE",
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                location.description,
                style: const TextStyle(fontSize: 14, height: 1.4),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _ActionItem({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
