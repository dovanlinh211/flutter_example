import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 70,
                height: 70,
                padding: EdgeInsets.all(15),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: FlutterLogo(),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Text(
                "Hello\n Welcomback",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),

            //Text Field
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "USERNAME",
                  labelStyle:
                      TextStyle(color: Colors.amberAccent, fontSize: 15),
                ),
              ),
            ),

            //password
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  labelStyle:
                      TextStyle(color: Colors.amberAccent, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: onSignInClick,
                  child: Text("SIGN IN"),
                )),

            // forgot password
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 15, color: Colors.black26),
                    ),
                    Text(
                      "Forgot Pass",
                      style: TextStyle(fontSize: 15, color: Colors.black26),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onSignInClick() {
    setState(() {
      if(_userController.text.length <6 || !_userController.text.contains("@")){
      }
    });
  }
}
