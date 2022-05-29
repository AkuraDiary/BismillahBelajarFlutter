import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/models/books.dart';

import '../detail/detail_screen.dart';

class BooksGridLayout extends StatelessWidget {
  final int gridCount;
  final Axis scrollDirection;
  final Iterable<Books> catalouge;
  final ScrollController _scrollerController = ScrollController();

  BooksGridLayout({
    required this.gridCount,
    required this.scrollDirection,
    required this.catalouge});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Scrollbar(
        thumbVisibility: true,
        controller: _scrollerController,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            scrollDirection: scrollDirection,
            crossAxisCount: gridCount,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: catalouge.map((bookItem) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(bookItem: bookItem);
                  }));
                },
                child: Card(
                  color: Colors.deepOrangeAccent,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.network(
                          bookItem.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 10.0),
                        child: Text(
                          bookItem.title,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, bottom: 10.0, top: 6.0),
                        child: Text(
                          bookItem.author,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }


  dispose() {
    _scrollerController.dispose();
  }
}
