import 'package:flutter/material.dart';
main(){
  runApp(
    MaterialApp(
      home:Myapp()
    )
  );
}
class Myapp extends StatefulWidget {
   Myapp({Key? key}) : super(key: key);


  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var w = 100.0;
  var h = 100.0;
  var col = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        w = w + 50;
        h = h + 50;
        setState(() {});
      }),
      body:Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 20),
          width: w,
          height: h,
          color: col,
          curve: Curves.bounceInOut,
          onEnd: (){
            col = Colors.blueGrey;
            setState(() {

            });
          },
        ),
      )
    );



  }
}
