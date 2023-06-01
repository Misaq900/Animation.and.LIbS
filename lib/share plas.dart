import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main(){
  runApp(MaterialApp(
    home: Yaser(),
  ));
}
class Yaser extends StatelessWidget {
  const Yaser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: AssetImage("images/yaser1.jpeg"),
      )
    );
  }
  }