import 'package:flutter/material.dart';

import '../../models/books.dart';

class DetailScreen extends StatelessWidget{
  final Books bookItem;

  DetailScreen({ required this.bookItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(bookItem.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Text("TODO Layout Detail for Desktop"); //TODO DesktopDetailScreen(bookItem: bookItem);
          } else {
            return Text("TODO Layout Detail for Mobile"); //TODO MobileDetailScreen(bookItem: bookItem);
          }
        },
      ),
    );
  }
}