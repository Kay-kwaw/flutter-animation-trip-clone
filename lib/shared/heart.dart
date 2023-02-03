import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.favorite,
        color: Color.fromARGB(255, 201, 27, 27),
        size: 30,
      ),
      onPressed: () {},
    );
  }
}
