import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: myapp(),
  ));
}

final String first_name = "First name";
final String last_name = "last name";
final String Age = "age";

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  late SharedPreferences preferences;
  var firstname, lastname, age;
  var details = "";
  TextEditingController tfn=TextEditingController();
  TextEditingController tln=TextEditingController();
  TextEditingController ta=TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Shared perferences',
          style: TextStyle(fontSize: 48),
        )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Shared Perfereces',
                  style: TextStyle(fontSize: 60),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      onChanged: (fn) {
                        firstname = fn;

                      },
                      decoration: InputDecoration(
                          focusColor: Colors.red,
                          hintText: 'Enter your Name',
                          icon: Icon(Icons.nat_rounded),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey, width: 2)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField( onChanged: (ln) {
                    lastname = ln;

                  },
                      decoration: InputDecoration(
                          focusColor: Colors.red,
                          hintText: 'Enter your Last Name',
                          icon: Icon(Icons.nat_rounded),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey, width: 2)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField( onChanged: (ag) {
                    age= ag;

                  },
                      decoration: InputDecoration(
                          focusColor: Colors.red,
                          hintText: 'Enter your age',
                          icon: Icon(Icons.nat_rounded),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blueGrey, width: 2)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                      focusColor: Colors.yellow,
                      color: Colors.black,
                      onPressed: () async{Fluttertoast.showToast(
                          msg: "Your Details Successfully Saved",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0

                      );
                        preferences = await SharedPreferences.getInstance();
                        await preferences.setString(first_name, firstname);
                        await preferences.setString(last_name, lastname);
                        await preferences.setString(Age, age);setState(() {});},
                      child: Icon(
                        Icons.save_alt,
                        size: 60,
                        color: Colors.green,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                      focusColor: Colors.yellow,
                      color: Colors.black,
                      onPressed: () async {
                        preferences = await SharedPreferences.getInstance();
                        firstname=await preferences.getString(first_name )??"no name";
                        lastname=await preferences.getString(last_name)??"no lastname";
                        age=await preferences.getString(Age)??'noAge';
                        details='  Hi $firstname $lastname  you are $age years old';
                      setState(() {});},
                      child: Icon(
                        Icons.restore_outlined,
                        size: 60,
                        color: Colors.green,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                      focusColor: Colors.yellow,
                      color: Colors.black,
                      onPressed: () async{Fluttertoast.showToast(
                          msg: "You delete Details successfully",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0

                      );
                        preferences=await SharedPreferences.getInstance() ;
                        preferences.remove(first_name);
                        preferences.remove(last_name);
                        preferences.remove(Age);
                        details='';
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.delete_forever_outlined,
                        size: 60,
                        color: Colors.red,
                      )),
                ),
                Center(
                    child: Text(
                  'Details=$details',
                  style: TextStyle(fontSize: 18),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
