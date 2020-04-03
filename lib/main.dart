import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/profile_pic.jpg'),
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'David Oort Alonso',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Lobster',
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.grey[800],
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'David Oort Alonso',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Lobster',
                      color: Colors.grey[100],
                    ),
                  ),
                ],
              ),
              Text(
                'FLUTTER NOOB',
                style: TextStyle(
                  fontFamily: 'SourceSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 1.5,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 20, bottom: 5, left: 30, right: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal.shade100,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '+34 123 456 789',
                      style: TextStyle(
                        fontFamily: 'SourceSans',
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.mail_outline,
                      color: Colors.teal.shade100,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'davidoort@email.com',
                          style: TextStyle(
                            fontFamily: 'SourceSans',
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
