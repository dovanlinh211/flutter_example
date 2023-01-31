import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DemoSizeTransition(),
    );
  }
}

class DemoSizeTransition extends StatefulWidget {
  const DemoSizeTransition({super.key});

  @override
  State<DemoSizeTransition> createState() => _DemoSizeTransitionState();
}

class _DemoSizeTransitionState extends State<DemoSizeTransition>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.linearToEaseOut);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back")),
          SizeTransition(
            sizeFactor: _animation,
            axis: Axis.vertical,
            axisAlignment: 0,
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    )),
                child: const Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
