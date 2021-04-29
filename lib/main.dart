import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Portfolio',
    home: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 180.0,        
              ),
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                Text(
                  'adeleye',
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
                    color: Colors.white,
                  ),
                ),
                ReuseableCard('+234 816 084 1875', Icons.phone),
                ReuseableCard('emmy007.el@gmail.com', Icons.email),
                ReuseableCard('127.0.0.1', Icons.location_on_outlined)
                ],
            ),
          ]),
        ),
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {

  ReuseableCard(this.label, this.icon);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.deepPurpleAccent,
          ),
        title: Text(
          label,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontFamily: 'Source Sans Pro',
              fontSize: 20.0
          ),
        ),
        ),
      );
  }
}


