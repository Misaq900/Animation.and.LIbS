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
  var l=50.0;
  var h=50.0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'my app',
            style: TextStyle(fontSize: 48),
          )),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          l=l+40.0;
          h=h=40.0;
          setState(() {

          });
        }),
        body: Center(
          child: AnimatedPositioned(
            child: Icon(Icons.accessibility, size: 80, color: Colors.pink),
            duration: Duration(seconds: 2),left:l,height: h,
          ),
        ));
  }
}
