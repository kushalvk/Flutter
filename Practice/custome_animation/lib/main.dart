import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FadeAnimationDemo()));
}

class FadeAnimationDemo extends StatefulWidget {
  @override
  _FadeAnimationDemoState createState() => _FadeAnimationDemoState();
}

class _FadeAnimationDemoState extends State<FadeAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Animation Controller (controls time & speed)
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    // Tween (0 → 1 opacity)
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward(); // start animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade Animation")),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(width: 100, height: 100, color: Colors.blue),
        ),
      ),
    );
  }
}
