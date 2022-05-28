import 'package:codelab_wisata/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:codelab_wisata/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata bandung"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /*IMAGES*/
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              place.name,
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(place.location),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
