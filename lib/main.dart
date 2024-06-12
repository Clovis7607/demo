import 'package:demo/q10.dart';
import 'package:demo/q11.dart';
import 'package:demo/q8.dart';
import 'package:demo/q9.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Q8Page(),
    );
  }
}
