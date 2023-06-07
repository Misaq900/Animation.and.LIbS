import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
home: myapp0(),
  ));
}
class myapp0 extends StatelessWidget {
  const myapp0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('my app',style: TextStyle(fontSize: 48),)),
      ),body: Center(
      child: Text('HI Admin',style: TextStyle(fontSize: 98)),
    ),
    );
  }
}
