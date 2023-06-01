import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: myapp(),
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 1),
        reverseDuration: Duration(seconds: 1));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
  }
var state=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                controller.forward();
              },
              icon: Icon(Icons.play_arrow)),
          IconButton(
              onPressed: () {
                controller.reverse();
              },
              icon: Icon(Icons.settings_backup_restore)),
          IconButton(
              onPressed: () {
                controller.stop();
              },
              icon: Icon(Icons.stop_circle)),
        ],
        title: Center(
            child: Text(
              'my app',
              style: TextStyle(fontSize: 48),
            )),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.repeat),onPressed: (){

        controller.repeat(reverse: true);
        setState(() {

        });
      }),
      body: Center(
          child:GestureDetector(
            child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: animation,size: 600,color: Colors.grey),
            onTap: (){
              if(state){
                controller.forward();
                state=false;
              }else{
                controller.reverse();
                state=true;
              }
            },
          ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
