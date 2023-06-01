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
  Widget mychild = Icon(Icons.sports_volleyball,color: Colors.brown,size: 900,);
  bool switcher = true;
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
        if (switcher) {
          mychild =Icon(Icons.sports_volleyball,color: Colors.brown,size: 900,);
          switcher = false;
        } else{
            mychild =  ElevatedButton(
                onPressed: () {},
                child: Text(
                  'misaq',
                  style: TextStyle(fontSize: 80),
                ));
            switcher = true;
          };
        setState(() {});
      }),
      body: Center(
        child: AnimatedSwitcher(
          reverseDuration: Duration(milliseconds: 1000),
          switchInCurve: Curves.bounceInOut,
          switchOutCurve: Curves.linear,
          duration: Duration(seconds: 1),
          child: mychild,
        ),
      ),
    );
  }
}
