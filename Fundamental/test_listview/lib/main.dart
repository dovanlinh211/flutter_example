import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test ListView",
      home: First(),
    );
  }
}

//First class
class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() {
    return _FirstState();
  }
}

class _FirstState extends State<First> {
  List<String> store = ["Item1", "Item2", "Item 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:  EdgeInsets.all(10),
                  height: 50,
                  child: Text(store[index]),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              );
            }));
  }
}

//Second class
class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
