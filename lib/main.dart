import 'package:flutter/material.dart';

// bai tap tren lop slot 4
// import 'package:lab_he181730/ui/pages/HomePage2.dart ';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   Center bodyApp() => Center(child: Text("First App"));
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(home: HomePage());
//   }
// }

// bai tap tren lop slot 5
// import 'package:lab_he181730/ui/pages/About.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   Center bodyApp() => Center(child: Text("First App"));
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(debugShowCheckedModeBanner: false, home: AboutPage());
//   }
// }

// LAB 4 - EXERCISE 1
// import 'package:lab_he181730/lab/4/exercise1.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   Center bodyApp() => Center(child: Text("First App"));
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(debugShowCheckedModeBanner: false, home: CoreWidgetDemo());
//   }
// }

// LAB 4 - EXERCISE 2
// import 'package:lab_he181730/lab/4/exercise2.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   Center bodyApp() => Center(child: Text("First App"));
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: InputControlsDemo(),
//     );
//   }
// }

// LAB 4 - EXERCISE 3
// import 'package:lab_he181730/lab/4/exercise3.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   Center bodyApp() => Center(child: Text("First App"));
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LayoutBasicsDemo(),
//     );
//   }
// }

// LAB 4 - EXERCISE 4, 5
//import 'package:lab_he181730/lab/4/exercise4.dart';
import 'package:lab_he181730/lab/4/exercise5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Center bodyApp() => Center(child: Text("First App"));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: AppStructureDemo(),
    // );
    return MaterialApp(debugShowCheckedModeBanner: false, home: Exercise5());
  }
}
