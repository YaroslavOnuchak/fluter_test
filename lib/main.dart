import 'package:flutter/material.dart';
import 'dart:math';

void main() => {runApp(new MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test',
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: CustomTile(),
        ),
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  @override
  CustomTileState createState() => CustomTileState();
}

class RandomColorRGBO {
  int randomR() {
    final r = new Random();
    return r.nextInt(255);
  }

  int randomG() {
    final g = new Random();
    return g.nextInt(255);
  }

  int randomB() {
    final b = new Random();
    return b.nextInt(255);
  }

  double randomO() {
    final o = new Random();
    return o.nextDouble();
  }
}

class CustomTileState extends State<CustomTile> {
  Color color;

  final r = RandomColorRGBO();
  final g = RandomColorRGBO();
  final b = RandomColorRGBO();
  final o = RandomColorRGBO();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = Color.fromRGBO(
              r.randomR(), g.randomR(), b.randomR(), o.randomO());
        });
      },
      child: Container(
        color: color,
        child: ListTile(
          title: Center(
            child: Text(
              'Hey there',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
      ),
    );
  }
}
