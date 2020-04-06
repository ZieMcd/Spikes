import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red[600],
      title: Text('Home'),
      centerTitle: true,      
    ),
    body: Row(
      children: <Widget>[
       Expanded(
         child: Image.asset('assets/sky1.jpg'),
         flex:3
         
         ),
        Expanded(
          flex: 3,
                  child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.cyan[100],
            child: Text('1'),
          ),
        ),
        Expanded(
          flex: 2,
                  child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.cyan[200],
            child: Text('2'),),
        ),
        Expanded(
          flex: 1,
                  child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.cyan[300],
            child: Text('3'),
          ),
        )
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
  );
  }
}

