import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Text(
          "This is red screen",
          style: TextStyle(color: Colors.black),
        )),
      ),
    );
  }
}
