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

class CustomTileState extends State<CustomTile> {
  Color color;

  @override
  void initState() {
    super.initState();
  }

  int random() {
    var rng = new Random();
    return rng.nextInt(255);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: Center(
          child: Text(
            'Hey there',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        onTap: () {
          setState(() {
            color = Color.fromRGBO(random(), random(), random(), 1);
          });
        },
      ),
    );
  }
}
