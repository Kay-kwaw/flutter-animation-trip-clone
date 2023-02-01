import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 30;
  double _width = 200;
  Color _color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 5),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("animate margin"),
              onPressed: () => setState(() {
                _margin = 50;
              }),
            ),
            ElevatedButton(
              child: const Text("animate color"),
              onPressed: () => setState(() {
                _color = Colors.redAccent;
              }),
            ),
            ElevatedButton(
              child: const Text("animate width"),
              onPressed: () => setState(() {
                _width = 400;
              }),
            ),
            ElevatedButton(
              child: const Text("animate opacity"),
              onPressed: () => setState(() {
                _opacity = 0;
              }),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: const Text(
                "hide me",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
