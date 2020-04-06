import 'package:flutter/material.dart';
import 'qoute.dart';

void main() => runApp(MaterialApp(
  home: Qoutelist() ,
));

class Qoutelist extends StatefulWidget {
  @override
  _QoutelistState createState() => _QoutelistState();
}

class _QoutelistState extends State<Qoutelist> {

  List<Qoute> quotes =[
    Qoute(auther: 'Oscar Wilde', text: 'Be yourself, everyone else is already taken '),
    Qoute(auther: 'Zie', text: 'I have nothing to declare execpt my genius'),
    Qoute(auther: 'Some dude ', text: 'The truth is rarely pure and never simply'),
  ];

  Widget qouteTemplate(qoute){


    return Card(
      
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoute.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6,),
            Text(
              qoute.auther,
                style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
                ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => qouteTemplate(quote)).toList(),
        ),
    );
  }
}