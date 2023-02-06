import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 200),
        //Like a clock that ticks for animation
        vsync: this);
    _controller.forward();

    _colorAnimation =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(_controller);

    _controller.addListener(() {
      print(_controller.value);
    });
  }

  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.favorite,
        color: Colors.grey,
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
