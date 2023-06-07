import 'package:matxp/shared%20perferences%20pakage/Sec%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

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

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  late SharedPreferences preferences;
  var firstname, lastname, age;
  var Email='Admin';
  var email;
  var pas;
  var Password="Admin";

  TextEditingController tfn = TextEditingController();
  TextEditingController tln = TextEditingController();
  TextEditingController ta = TextEditingController();
  bool? isCheked = false;
  var Admin;
  @override void inistate(){
    super.initState();
    Admin=true;
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xff055256),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log in Oberplan',
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                        onChanged: (fn) {

                          firstname = fn;
                        },
                        decoration: InputDecoration(icon: Icon(Icons.person),
                            label: Text('Email'),
                            focusColor: Color(0xff13282b),
                            hintText: 'Example@gamil.com',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff13282b), width: 2)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                        onChanged: (ln) {
                          lastname = ln;
                        },
                        decoration: InputDecoration(icon: Icon(Icons.lock_open),
                            errorStyle: TextStyle(),
                            label: Text('Password'),
                            focusColor: Color(0xff13282b),
                            hintText: '******',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff13282b), width: 2)))),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: isCheked,

                            activeColor: Color(0xff9ab8ba),
                            checkColor: Color(0xff9ab8ba),
                            onChanged: (newbool) async {
                              preferences = await SharedPreferences.getInstance();
                              await preferences.setString(first_name, firstname);
                              await preferences.setString(last_name, lastname);
                              await preferences.setString(Age, age);
                              setState(() {
                                isCheked = newbool;
                              });
                            },
                          ),
                          Text("Remember me")
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        focusColor: Color(0xff9ab8ba),
                        color: Color(0xffdef9fa),
                        onPressed: () {
                          if(email){
                            Admin="Admin";
                            Navigator.push(context, MaterialPageRoute(builder:(context) => myapp0(), ),);
                          }else{

                          }

                          setState(() {});
                        },
                        child: Text("Login", style: TextStyle(color: Color(0xff13282b)),)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
