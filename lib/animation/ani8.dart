import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.fallback(),
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
        duration: Duration(milliseconds: 500),
        reverseDuration: Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
  }

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
        child: FadeTransition(opacity: animation,child: Icon(Icons.smoke_free_outlined,color: Colors.red,size: 600),
        )
      ),
    );
  }
}
