import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_routes/student.dart';

class Page1 extends StatelessWidget {
  static const route = "/page1";
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Student student = ModalRoute.of(context)!.settings.arguments as Student;
    print(student.name + "  ${student.age}");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Text("Name: ${student.name}"), Text("Age: ${student.age}")],
      ),
    );
  }
}
