import 'dart:html';

import 'package:flutter/material.dart';

import '../../models/books.dart';

class DetailScreen extends StatelessWidget{
  final Books bookItem;

  DetailScreen({ required this.bookItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: [
              /*
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.blue,),
                    onPressed: (){
                      Navigator.pop(context);
                      },
                  ),
                  Text(
                    bookItem.title,
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              */
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return Text("TODO Layout Detail for Desktop"); //TODO DesktopDetailScreen(bookItem: bookItem);
                  } else {
                    return Text("TODO Layout Detail for Mobile"); //TODO MobileDetailScreen(bookItem: bookItem);
                  }
                },
              ),
            ],
          ),

      ),
    );
  }
}