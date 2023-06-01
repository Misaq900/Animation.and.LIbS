import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ani1(),
  ));
}

class ani1 extends StatefulWidget {
  const ani1({Key? key}) : super(key: key);

  @override
  State<ani1> createState() => _ani1State();
}

class _ani1State extends State<ani1> {
  @override
  var w = 100.0, h = 100.0;
  var co = Colors.deepPurple;
  var color = [Colors.blue, Colors.red, Colors.green];
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        w = w + 100;
        h = h + 100;
        co = color[Random().nextInt(color.length)];
        setState(() {});
      }),
      appBar: AppBar(
        title: Text('Ani1'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          color: co,
          width: w,
          height: h,
          curve: Curves.bounceInOut,
          onEnd: () {
            co = Colors.grey;
            setState(() {});
          },
        ),
      ),
    );
  }
}
