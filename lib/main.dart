import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(greeting_app());
}

class greeting_app extends StatelessWidget {
  const greeting_app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

