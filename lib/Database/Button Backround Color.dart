import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color start_color = Colors.cyan;

  changeBackground() {
    Color color = Color.fromARGB(Random().nextInt(256), Random().nextInt(256),
        Random().nextInt(256), Random().nextInt(256));
    setState(() {
      start_color = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: start_color,
        appBar: AppBar(
          title: Text("Furry box"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Change BackGround"),
            onPressed: () {
              changeBackground();
            },
          ),
        ),
      ),
    );
  }
}