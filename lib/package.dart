import 'package:flutter/material.dart';
main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container()
      ],
    );

  }
}
