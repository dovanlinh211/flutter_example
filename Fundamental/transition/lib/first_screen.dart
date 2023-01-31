import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:transition/transition.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: Container(

          child: Column(
            children: [
              Text("first screen"),
              ElevatedButton(
                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const FourthScreen()),
  );
}
                , child: Text("go to animation"))

            ],
          ),
          
        ),
      ),

    );
  }
}