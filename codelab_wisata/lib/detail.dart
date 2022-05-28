import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Text(
              "Farm House Lembang",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(children: <Widget>[
                  Icon(Icons.calendar_today),
                  SizedBox(height: 8.0),
                  Text("Open Everyday")
                ]),

                Column(children: <Widget>[
                  Icon(Icons.lock_clock_rounded),
                  SizedBox(height: 8.0),
                  Text("09:00 - 20:00")
                ]),

                Column(children: <Widget>[
                  Icon(Icons.monetization_on_rounded),
                  SizedBox(height: 8.0),
                  Text("RP 25.000")
                ]),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
