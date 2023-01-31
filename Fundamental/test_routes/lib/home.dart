import 'package:flutter/material.dart';
import 'package:test_routes/page1.dart';
import 'package:test_routes/page2.dart';
import 'package:test_routes/student.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(
            context, 
            Page2.route, 
            arguments: Student(name: "Linh ongenerte route", age: 10));
          }, 
          child: Text("Go Page 2"))
        ],
      ),
    );
  }
}