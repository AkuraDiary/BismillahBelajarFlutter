import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          /*IMAGES*/
          Image.asset('images/farm-house.jpg'),
          
          /*JUDUL*/
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

          /*ICONS*/
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
          ),

          /*KONTENT DESKRIPSI*/
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),

        ],
      ),
    ));
  }
}