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
    var r = new Random();
    return r.nextInt(255);
  }

  int randomG() {
    var g = new Random();
    return g.nextInt(255);
  }

  int randomB() {
    var b = new Random();
    return b.nextInt(255);
  }

  double randomO() {
    var o = new Random();
    return o.nextDouble();
  }
}

class CustomTileState extends State<CustomTile> {
  Color color;

  var r = RandomColorRGBO();
  var g = RandomColorRGBO();
  var b = RandomColorRGBO();
  var o = RandomColorRGBO();

  @override
  void initState() {
    super.initState();
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
            color = Color.fromRGBO(
                r.randomR(), g.randomR(), b.randomR(), o.randomO());
          });
        },
      ),
    );
  }
}
