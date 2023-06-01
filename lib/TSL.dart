import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: libspages(),
  ));
}

class libspages extends StatelessWidget {
  const libspages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_outlined))],
        title: Center(
          child: Text(
            'TSL Project',
            style: TextStyle(color: Colors.blueGrey,),
          ),
        ),
      ),
    );
  }
}
