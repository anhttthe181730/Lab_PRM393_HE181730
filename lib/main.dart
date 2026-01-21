import 'package:flutter/material.dart';
import 'package:lab_he181730/ui/pages/HomePage2.dart ';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Center bodyApp() => Center(child: Text("First App"));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePage());
  }
}
