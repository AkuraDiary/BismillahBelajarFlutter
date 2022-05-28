import 'package:codelab_wisata/TourismPlaceGrid.dart';
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth <= 600){
            return TourismPlaceList();
          }else{
            return TourismPlaceGrid();
          }
        }
      )
    );
  }
}


