import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
                  alignment: Alignment.center,
                  height: 300.0,
                  child: Image(
                    image: AssetImage('images/doctor.png'),
                  ),
                ),
                Container(
                  child: Text('Save Lives!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35),),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Text(
                        'Next ➡',
                      ),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(fontSize: 22, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              Text(
                'Adeleye',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),

              ),
              Text(
                'Software Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: Text(
                    '+234 816 084 1875',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.deepPurpleAccent,
                    ),
                  title: Text(
                    'emmy007.el@gmail.com',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0
                    ),
                  ),
                  ),
                ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text(
                      '⬅ Back',
                    ),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      backgroundColor: Colors.white,
                      textStyle: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Source Sans Pro'),
                ),
              )
              )],
          ),
        ),
      ),
    );
  }
}


