// import 'package:flutter/material.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// // MAIN SCAFOFF CLASS

// class _MyHomePageState extends State<MyHomePage> {
//   // init counter

//   int _counter = 0;

// // increment counter variable function
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

// // decrement counter variable function
//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

// // function to build Scafold
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         body: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new Text(
//                 'You have pushed the button this many times:',
//               ),
//               new Text('$_counter',
//                   style: Theme.of(context).textTheme.headline4),
//             ],
//           ),
//         ),
//         floatingActionButton: new Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               // Button increment
//               new Padding(
//                   padding: EdgeInsets.only(bottom: 10),
//                   child: new FloatingActionButton(
//                     onPressed: _incrementCounter,
//                     tooltip: 'Increment',
//                     child: new Icon(Icons.add),
//                   )),

//               // Button decrement
//               new FloatingActionButton(
//                 onPressed: _decrementCounter,
//                 tooltip: 'Decrement',
//                 child: new Icon(Icons.remove),
//               ),
//             ]));
//   }
// }


import 'package:flutter/material.dart';
import 'package:test_rx_dart/counter_bloc.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  CounterBloc _counterBloc = new CounterBloc(initialCount: 0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new StreamBuilder(stream: _counterBloc.counterObservable, builder: (context, AsyncSnapshot<int> snapshot){
              return new Text('${snapshot.data}', style: Theme.of(context).textTheme.headline4);
            })
          ],
        ),
      ),
      floatingActionButton: new Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        new Padding(padding: EdgeInsets.only(bottom: 10), child:
          new FloatingActionButton(
            onPressed: _counterBloc.increment,
            tooltip: 'Increment',
            child: new Icon(Icons.add),
          )
        ),
        new FloatingActionButton(
          onPressed: _counterBloc.decrement,
          tooltip: 'Decrement',
          child: new Icon(Icons.remove),
        ),
      ])
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
  
}