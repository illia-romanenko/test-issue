import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petro Antoshkin Test',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random _random = new Random();
  Color _color = new Color(0xff555555);

  void _generateRandomColor() {
    setState(() {
      _color = new Color(_random.nextInt(0xffffffff));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: _color,
          padding: EdgeInsets.all(0),
        ),
        Center(
          child: Text(
            'Hey there',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        GestureDetector(
          onTap: _generateRandomColor,
        )
      ],
    );
  }
}
