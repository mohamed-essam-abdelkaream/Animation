import 'package:flutter/material.dart';
import 'presentation/animation1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Animation1(),
    );
  }
}
