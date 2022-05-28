import 'package:codelab_wisata/TourismPlaceList.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata bandung. Size: ${MediaQuery.of(context).size.width}"),
      ),
      body: TourismPlaceList(),
    );
  }
}


