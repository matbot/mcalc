import 'package:flutter/material.dart';
import 'package:mcalc/screens/calculator.dart';

// Not locking orientations yet.
void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Calculator(),
    );
  }
}