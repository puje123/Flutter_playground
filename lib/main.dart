import 'dart:html';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.lightBlue,
              child: OrientationBuilder(
                  builder: (context, orientation) {
                    if (orientation == Orientation.portrait) {
                      return Text('Hello');
                    } else {
                      return Text('Hello My name is BLABLABLA');
                    }
                  }
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: OrientationBuilder(
              builder: (context, orientation) => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Dood tal\n\n' +
                        '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
                        '[OrientationBuilder]:\n$orientation',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
