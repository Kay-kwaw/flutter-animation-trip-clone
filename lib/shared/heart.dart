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

    _colorAnimation =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(_controller);

    _controller.addListener(() {
      print(_controller.value);
      print(_colorAnimation.value);
    });

    _controller.addStatusListener((status) {
      print(status);
    });
  }

  Widget build(BuildContext context) {
    //Listens to changes in the animation controller
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return IconButton(
            icon: Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              size: 30,
            ),
            onPressed: () {
              _controller.forward();
            },
          );
        });
  }
}
