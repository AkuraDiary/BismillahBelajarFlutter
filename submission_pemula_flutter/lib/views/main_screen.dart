import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/models/books.dart';

import 'layout/BooksGridLayout.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if (constraints.maxWidth <= 600) {
            return BooksGridLayout(gridCount: 2, scrollDirection: Axis.vertical, catalouge: bookCatalougeList,);
          } else if (constraints.maxWidth <= 1200) {
            return Text("Layout for web above 600 until 1200");
          } else {
            return Text("Layout for web large");
          }
        }
    )
    ,
    );
  }
  }