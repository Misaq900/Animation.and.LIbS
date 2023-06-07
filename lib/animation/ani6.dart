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
  var firstchild = Icon(
    Icons.male,
    size: 210,
  );
  var secendchild = Icon(
    Icons.female,
    size: 210,
  );
  var state = CrossFadeState.showFirst;
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          if (state == CrossFadeState.showFirst) {
            state = CrossFadeState.showSecond;
          } else {
            state = CrossFadeState.showFirst;
          }
          setState(() {});
        }),
        body: Center(
          child: AnimatedCrossFade(
            firstChild: firstchild,
            secondChild: secendchild,

            crossFadeState: state,
            duration: Duration(seconds: 1),
          ),
        ));
  }
}
