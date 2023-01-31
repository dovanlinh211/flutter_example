import 'package:flutter/material.dart';
import 'package:mvvm_api/views/posts_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostsView(),
    );
  }
}