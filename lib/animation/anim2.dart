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
  var op = 1.0;
  var co=[Colors.pink];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            FloatingActionButton(onPressed: () {
              op = 1.0;
              setState(() {

              });
            })
          ],
          title: Center(
              child: Text(
            'my app',
            style: TextStyle(fontSize: 48),
          )),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {

          op = 0.0;
          setState(() {

          });
        }),
        body: Container(
          child: AnimatedOpacity(
            opacity: op,
            duration: Duration(seconds: 1),
            child: Center(
                child:
                    Icon(Icons.ac_unit_outlined, size: 200, color:co[0])),
            curve: Curves.bounceInOut

          ),
        ));
  }
}
