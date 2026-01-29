import 'package:flutter/material.dart';
import '../../models/Location.dart';
import 'DetailLocationPage.dart';

class LocationListPage extends StatefulWidget {
  final List<Location> locations;

  const LocationListPage({super.key, required this.locations});

  @override
  State<LocationListPage> createState() => _LocationListPageState();
}

class _LocationListPageState extends State<LocationListPage> {
  late List<bool> isStarred;
  late List<int> counts;

  @override
  void initState() {
    super.initState();
    isStarred = List<bool>.filled(widget.locations.length, false);
    counts = widget.locations.map((e) => e.count).toList();
  }

  void toggleStar(int index) {
    setState(() {
      if (!isStarred[index]) {
        isStarred[index] = true;
        counts[index] += 1;
      } else {
        isStarred[index] = false;
        counts[index] -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Location List"), centerTitle: true),
      body: ListView.builder(
        itemCount: widget.locations.length,
        itemBuilder: (context, index) {
          final location = widget.locations[index];

          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(location.image),
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(
                    location.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(location.address),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () => toggleStar(index),
                        child: Icon(
                          Icons.star,
                          color: isStarred[index] ? Colors.amber : Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text("${counts[index]}"),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailLocationPage(
                                location: location,
                                count: counts[index],
                                isStarred: isStarred[index],
                              ),
                            ),
                          );
                        },
                        child: const Text("Detail"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
