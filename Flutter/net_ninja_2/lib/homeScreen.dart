import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int iLevel =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            iLevel +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/userIcon.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
               ),
            ),
            SizedBox(height:10 ,),
            Text(
              'Izak-McD',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
             Text(
              'Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
               ),
            ),
            SizedBox(height:10 ,),
            Text(
              '$iLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),

            Row(
             // mainAxisAlignment : MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey
                ),
                SizedBox(width: 10,),
                Text('Ziemcd@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
        ),
    );

  
  }
}
