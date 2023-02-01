import 'package:flutter/material.dart';
import 'package:flutteranimation/screens/home.dart';
import 'package:flutteranimation/shared/sandbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Freemo trips',
      home: Home(),
    );
  }
}
