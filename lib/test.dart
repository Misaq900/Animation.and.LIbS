import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(
    home: Myapp(),
  ));
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController dateinput = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Icon(Icons.access_alarm,size: 40,),

            SizedBox(height: 100,),
            TextField(

         controller: dateinput,


              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.blue),
                  hintText: "Enter your date of birth"

              ),
            ),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (

                ){
              dateinput.value.text


            }, child: Text("convert"),)
          ],
        ),
      ),
    );
  }
}
