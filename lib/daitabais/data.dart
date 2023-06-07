import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: "Database",
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: Misaq(),
  ));
}

class Misaq extends StatefulWidget {
  const Misaq({Key? key}) : super(key: key);

  @override
  State<Misaq> createState() => _MisaqState();
}

class _MisaqState extends State<Misaq> {
  late Database database;
  var noteId, noteTitile, notedescription;
  var tecId = TextEditingController();
  var tecName = TextEditingController();
  var tecAge = TextEditingController();
  List<String> notes = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    openDB();

  }
  openDB()async{
    database = await openDatabase(join(
      await getDatabasesPath(),"notesDb.db"

    ),
      onCreate: (db,ver){
        db.execute('''CREATE TABLE notes(
              not_id INT primary key
              not_title TEXT
              not_description TEXT
          )'''
        );
      },
      version: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("DB App")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "SQLite Database",
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: tecId,
                decoration: InputDecoration(hintText: "Enter Note id", label: Text("Id")),
                onChanged: (id) {
                  this.noteId = id;
                },
              ),
              TextField(
                controller: tecName,
                decoration: InputDecoration(hintText: "Enter Note title", label: Text("Title")),
                onChanged: (title) {
                  this.noteTitile = title;
                },
              ),
              TextField(
                controller: tecAge,
                decoration: InputDecoration(hintText: "Enter Note Description", label: Text("Description")),
                onChanged: (desc) {
                  this.notedescription = desc;
                },
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: (){
                          
                        },
                        child: Text("Save Note")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: (){


                        },
                        child: Text("List All Notes")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: (){
                        },
                        child: Text("Delete by Id")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: (){

                        },
                        child: Text("Delete All")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: (){
                        },
                        child: Text("Search by id")),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: notes.length,
                    itemBuilder: (c, i) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.lightBlueAccent,
                          child: Text(notes[i][i]),
                        ),
                        title: Text(
                          notes[i],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          notes[i],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

}