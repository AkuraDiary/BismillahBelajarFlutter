import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/views/layout/BooksGridLayout.dart';

import '../../models/books.dart';
import '../main_screen.dart';

class DetailDesktopPage extends StatefulWidget {
  final Books bookItem;

  DetailDesktopPage({required this.bookItem});

  @override
  State<DetailDesktopPage> createState() => _DetailDesktopPageState();
}

class _DetailDesktopPageState extends State<DetailDesktopPage> {

  final _scrollerController = ScrollController();

  @override
  dispose() {
    _scrollerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: Container(
              width: 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                                icon: Icon(Icons.arrow_back, color: Colors.deepOrange),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                                }),
                          ),
                          SizedBox(width: 16),
                          Text(
                            widget.bookItem.title,
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Card(
                                    margin: EdgeInsets.all(16),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        child: Image.network(widget.bookItem.imageUrl),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                ],
                              ),
                            ],
                          )
                      ),
                      SizedBox(width: 32),

                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    widget.bookItem.title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'monsterrat',
                                    ),
                                  ),
                                ),

                                SizedBox(height: 16),

                                Row(
                                  children: <Widget>[
                                    Icon(Icons.book),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.bookItem.type,

                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),

                                Row(
                                  children: <Widget>[
                                    Icon(Icons.person),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.bookItem.author,

                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.calendar_today),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.bookItem.date,

                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.newspaper),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.bookItem.pages,

                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.menu_book),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.bookItem.publisher,

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 8.0,
                          child: Container(
                            padding: EdgeInsets.all(24),
                            child: Column(
                              children: [
                                Text(
                                  "Deskripsi : ",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  widget.bookItem.description,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text("Rekomendasi lainya: ",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",

                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4.0),
                    height: 250.0,
                    child: BooksGridLayout(
                      gridCount: 5,
                      scrollDirection: Axis.vertical,
                      catalouge: bookCatalougeList,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}