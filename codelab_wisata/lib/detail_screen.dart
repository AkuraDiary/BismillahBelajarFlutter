import 'package:codelab_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({required this.place});
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            /*IMAGES*/
                Image.asset('images/farm-house.jpg'),

            /*JUDUL*/
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Staatliches',
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
                    Text(place.openDays, style: informationTextStyle),
                  ]),
                  Column(children: <Widget>[
                    Icon(Icons.lock_clock_rounded),
                    SizedBox(height: 8.0),
                    Text(place.openTime, style: informationTextStyle),
                  ]),
                  Column(children: <Widget>[
                    Icon(Icons.monetization_on_rounded),
                    SizedBox(height: 8.0),
                    Text(place.ticketPrice, style: informationTextStyle)
                  ]),

                ],
              ),
            ),

            /*KONTENT DESKRIPSI*/
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),

            /*IMAGE FROM NETWORK*/
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url){
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                    );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
