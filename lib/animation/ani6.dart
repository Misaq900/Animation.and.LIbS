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
    Icons.smoke_free,
    size: 700,
    color: Colors.red,
  );
  var secendchild = Icon(
    Icons.cancel_outlined,
    size: 600,
    color: Colors.red,
  );
  var state = CrossFadeState.showFirst;
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
        if (state == CrossFadeState.showFirst) {
          state = CrossFadeState.showSecond;
        } else {
          state = CrossFadeState.showFirst;
        }
        setState(() {

        });
      }),
      body: Center(
        child: AnimatedCrossFade(
            firstChild: firstchild,
            secondChild: secendchild,
            crossFadeState: state,
            duration: Duration(seconds: 1),
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceOut,
            sizeCurve: Curves.easeInCirc),
      ),
    );
  }
}
