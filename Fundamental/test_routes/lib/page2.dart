import 'package:flutter/material.dart';
import 'package:test_routes/student.dart';

class Page2 extends StatelessWidget {
  static const route = "/page2";
  String name;
  String age;
  Page2(this.name, this.age);

  @override
  Widget build(BuildContext context) {
    // print(student.name + "  ${student.age}");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Name: ${name}"), 
          Text("Age: ${age}")],
      ),
    );
  }
}
