import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/views/layout/BooksGridLayout.dart';

import '../../models/books.dart';
import '../main_screen.dart';

class DetailDesktopPage extends StatelessWidget {
  final Books bookItem;

  const DetailDesktopPage({required this.bookItem});



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
            child: SizedBox(
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
                                icon: const Icon(Icons.arrow_back, color: Colors.deepOrange),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                                }),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            bookItem.title,
                            style: const TextStyle(
                              fontSize: 32,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Card(
                                    margin: const EdgeInsets.all(16),
                                    elevation: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        child: Image.network(bookItem.imageUrl),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ],
                          )
                      ),
                      const SizedBox(width: 32),

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
                                Text(
                                  bookItem.title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'monsterrat',
                                  ),
                                ),

                                const SizedBox(height: 16),

                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.book),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      bookItem.type,

                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),

                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.person),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      bookItem.author,

                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.calendar_today),
                                    const SizedBox(width: 8.0),
                                    Text(
                                     bookItem.date,

                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.newspaper),
                                    const SizedBox(width: 8.0),
                                    Text(
                                    bookItem.pages,

                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.menu_book),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      bookItem.publisher,

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 8.0,
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              children: [
                                const Text(
                                  "Deskripsi : ",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  bookItem.description,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
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
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Text("Rekomendasi lainya: ",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",

                        )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 4.0),
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
