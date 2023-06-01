import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main(){
  runApp(MaterialApp(
    home: misaq(),
  ));
}
class misaq extends StatelessWidget {
  const misaq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test app '),backgroundColor: Colors.blueGrey),
      body:
      Column(
        children: [
          Icon(FontAwesomeIcons.font
          )
          ,ElevatedButton(onPressed: (){
            Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
            Alert(
            context: context,
            type: AlertType.error,
            title: "RFLUTTER ALERT",
            desc: "Flutter is more awesome with RFlutter Alert.",
            buttons: [
            DialogButton(
            child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
            )
            ],
            ).show();
            Alert(
              context: context,
              type: AlertType.warning,
              title: "RFLUTTER ALERT",
              desc: "Flutter is more awesome with RFlutter Alert.",
              buttons: [
                DialogButton(
                  child: Text(
                    "FLAT",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  color: Color.fromRGBO(0, 179, 134, 1.0),
                ),
                DialogButton(
                  child: Text(
                    "GRADIENT",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(116, 116, 191, 1.0),
                    Color.fromRGBO(52, 138, 199, 1.0)
                  ]),
                )
              ],
            ).show();var alertStyle = AlertStyle(
              animationType: AnimationType.fromTop,
              isCloseButton: false,
              isOverlayTapDismiss: false,
              descStyle: TextStyle(fontWeight: FontWeight.bold),
              descTextAlign: TextAlign.start,
              animationDuration: Duration(milliseconds: 400),
              alertBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(
                  color: Colors.grey,
                ),
              ),
              titleStyle: TextStyle(
                color: Colors.red,
              ),
              alertAlignment: Alignment.topCenter,
            );
          }, child: Text('Test'))
        ],
      ),
    );
  }
}
