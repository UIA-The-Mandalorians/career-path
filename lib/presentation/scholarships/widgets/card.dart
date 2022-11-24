import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String type;

  const CardWidget({Key? key, required this.title, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 26, 23, 57)),
        child: ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
          border: new Border(
              right: new BorderSide(width: 1.0, color: Colors.white24))),
      child: Icon(Icons.school, color: Colors.white),
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Row(
      children: <Widget>[
        Icon(Icons.linear_scale, color: Colors.yellowAccent),
        Text(type, style: TextStyle(color: Colors.white))
      ],
    ),
    trailing:
        Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)),
      ),
    );
  }
}
