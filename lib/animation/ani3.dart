import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.fallback(),
    home: myapp(),
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'my app',
            style: TextStyle(fontSize: 48),
          )),
        ),floatingActionButton: FloatingActionButton(onPressed: (){}),
        body:Center(
          child: AnimatedPadding(
              padding: EdgeInsets.all(25),
              duration: Duration(seconds: 2),
              child: Icon(
                Icons.accessibility,
                size: 250,
                color: Colors.pink,
              )),
        ));
  }
}
