import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home: misaq77(),
  ));
}

class misaq77 extends StatelessWidget {
  const misaq77({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(FontAwesomeIcons.font),
          Icon(FontAwesomeIcons.font),
          Icon(FontAwesomeIcons.font),
          Icon(FontAwesomeIcons.font),
          Icon(FontAwesomeIcons.font),
          Icon(FontAwesomeIcons.font),
        ],
      ),
    );
  }
}
