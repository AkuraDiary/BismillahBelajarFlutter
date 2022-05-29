import 'package:flutter/material.dart';

import '../../models/books.dart';
import '../layout/BooksGridLayout.dart';

class HomeMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          padding: EdgeInsets.only(top: 20.0),
          height: 200.0,
          child: BooksGridLayout(
            gridCount: 1,
            scrollDirection: Axis.horizontal,
            catalouge: bookCatalougeList,
          ),
        ),
    );
  }
}