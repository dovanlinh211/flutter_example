import 'package:flutter/material.dart';
import 'package:mvvm_test/view_model/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // create instance from view model
  var data = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${data.getCounter()}"),
            TextButton(
              onPressed: () {
                setState(() {
                  data.inc();
                });
              },
              // not write any business logic
              // i will send action to view model
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
