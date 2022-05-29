import 'package:flutter/material.dart';

import '../../models/books.dart';

class DetailMobilePage extends StatelessWidget {
  final Books bookItem;

  DetailMobilePage({required this.bookItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                /*MAIN IMAGES*/
                Opacity(
                  opacity: 0.85,
                  child: Image.network(
                    bookItem.imageUrl,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Card(
                      elevation: 5,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.2,
                          left: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.network(
                        bookItem.imageUrl,
                        height:200,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    /*JUDUL*/
                    Container(
                      margin: EdgeInsets.only(top: 16.0, left: 24.0),
                      child: Text(
                        bookItem.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Staatliches',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.0, left: 24.0),
                      child: Column(children: <Widget>[
                        Icon(Icons.book),
                        SizedBox(height: 8.0),
                        Text(bookItem.type),
                        SizedBox(height: 24.0),
                      ]),
                    ),
                  ],
                ),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.deepOrange,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ),
                ),

              ],
            ),



            /*KONTENT DESKRIPSI*/
            Container(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(
                "Deskripsi buku : ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
              child: Text(
                bookItem.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),


            /*ICONS*/
            Container(
              margin: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(children: <Widget>[
                    Icon(Icons.person),
                    SizedBox(height: 8.0),
                    Text(bookItem.author),

                    SizedBox(height: 16.0),

                    Icon(Icons.calendar_today),
                    SizedBox(height: 8.0),
                    Text(bookItem.date),
                  ]),
                  Column(children: <Widget>[
                    Icon(Icons.newspaper),
                    SizedBox(height: 8.0),
                    Text(bookItem.pages + " Lembar"),

                    SizedBox(height: 16.0),

                    Icon(Icons.menu_book),
                    SizedBox(height: 8.0),
                    Text(bookItem.publisher, softWrap: true,),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
