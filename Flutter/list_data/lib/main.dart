import 'package:flutter/material.dart';
import 'Qoutes.dart';

void main() => runApp(MaterialApp(
  home:QouteList(),

));

class QouteList extends StatefulWidget {
  @override
  _QouteListState createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {

    List<String> qoutes =[
        
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('HOME'),

      ),
      body: Column(
        children: qoutes.map((qo) => Text(qo)).toList(),
      ),
    );
  }
}

