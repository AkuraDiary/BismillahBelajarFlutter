import 'package:codelab_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailWebPage extends StatelessWidget{
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');
  final TourismPlace place;

  DetailWebPage({required this.place});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Wisata bandung",
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'Staatliches',
            ),
          ),
          SizedBox(height: 32),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    children: [],
                  )
              ),
              SizedBox(width: 32),
              Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            child: Text(
                              place.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'Staatliches',
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.calendar_today),
                              SizedBox(width: 8.0),
                              Text(
                                place.openDays,
                                style: informationTextStyle,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Icon(Icons.access_time),
                              SizedBox(width: 8.0),
                              Text(
                                place.openTime,
                                style: informationTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),

                          Row(
                            children: <Widget>[
                              Icon(Icons.monetization_on),
                              SizedBox(width: 8.0),
                              Text(
                                place.ticketPrice,
                                style: informationTextStyle,
                              ),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              place.description,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Oxygen',
                              ),
                              ),
                            ),
                          Column(
                            children: [
                              ClipRRect(
                                child: Image.asset(place.imageAsset),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              SizedBox(height: 16),
                              Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: place.imageUrls.map((url) {
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
                        ],
                      ),
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}