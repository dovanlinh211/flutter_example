import 'package:flutter/material.dart';
import 'package:test_routes/home.dart';
import 'package:test_routes/page1.dart';
import 'package:test_routes/page2.dart';
import 'package:test_routes/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {Page1.route: (context) => Page1(), "/": (context) => Home()},
      initialRoute: "/",
      onGenerateRoute: (settings) {
        if (settings.name == Page2.route) {
          Student s = settings.arguments;
          return MaterialPageRoute(builder: (context)=>Page2())
        }
      },
    );
  }
}
