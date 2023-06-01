import 'dart:js';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    debugShowCheckedModeBanner: false,
    home:myapp() ,
  ));
}
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  String myage = '';

  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [

        Text('your age is ', style: Theme
            .of(context)
            .textTheme
            .titleLarge,)
        , SizedBox(
          height: 10,
        ), Text(myage), SizedBox(
          height: 30,
        ), ElevatedButton(onPressed: () {
          picDob(context);
        }, child: Text('Date of Birth'))
      ],)),
    );
  }

  picDob(cont) {
    showDatePicker(context: cont,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now()).then((picekedDate) {
      if (picekedDate !=null){
        calculateAge(picekedDate);
      }
    });
  }

  calculateAge(DateTime birth) {
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);
    int years = age.inDays ~/ 365;
    int months = (age.inDays % 365)
        ~/ 30;
    int days = ((age.inDays % 365) % 30);
    setState(() {
      myage = "$years years,$months months and $days days";
    });
  }
}