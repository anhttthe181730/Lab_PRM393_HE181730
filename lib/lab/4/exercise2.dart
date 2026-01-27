import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {
  double _rating = 50; // slider value
  bool _isActive = false; // switch value
  String? _genre; // radio selected (Action/Comedy)
  DateTime? _pickedDate; // date picker result

  Future<void> _openDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 5);
    final lastDate = DateTime(now.year + 5);

    final result = await showDatePicker(
      context: context,
      initialDate: _pickedDate ?? now,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (result != null) {
      setState(() => _pickedDate = result);
    }
  }

  String _formatDate(DateTime? d) {
    if (d == null) return "None";
    return "${d.day.toString().padLeft(2, '0')}/"
        "${d.month.toString().padLeft(2, '0')}/"
        "${d.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercise 2 – Input Controls")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Slider
            const Text(
              "Rating (Slider)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _rating,
              min: 0,
              max: 100,
              divisions: 100,
              label: _rating.round().toString(),
              onChanged: (value) => setState(() => _rating = value),
            ),
            Text("Current value: ${_rating.round()}"),

            const SizedBox(height: 20),

            // Switch
            const Text(
              "Active (Switch)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Is movie active?"),
                Switch(
                  value: _isActive,
                  onChanged: (value) => setState(() => _isActive = value),
                ),
              ],
            ),
            Text("Current status: ${_isActive ? "Active" : "Inactive"}"),

            const SizedBox(height: 20),

            // RadioListTile group
            const Text(
              "Genre (RadioListTile)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RadioListTile<String>(
              title: const Text("Action"),
              value: "Action",
              groupValue: _genre,
              onChanged: (value) => setState(() => _genre = value),
            ),
            RadioListTile<String>(
              title: const Text("Comedy"),
              value: "Comedy",
              groupValue: _genre,
              onChanged: (value) => setState(() => _genre = value),
            ),
            Text("Selected genre: ${_genre ?? "None"}"),

            const SizedBox(height: 12),

            // DatePicker button + display
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _openDatePicker,
                child: const Text("Open Date Picker"),
              ),
            ),
            const SizedBox(height: 8),
            Text("Selected date: ${_formatDate(_pickedDate)}"),
          ],
        ),
      ),
    );
  }
}
