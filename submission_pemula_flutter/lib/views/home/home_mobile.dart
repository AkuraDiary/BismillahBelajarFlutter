import 'package:flutter/material.dart';

import '../../models/books.dart';
import '../layout/BooksGridLayout.dart';

class HomeMobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 16, top: 20),
                child: Text("Selamat Datang di Perpustakaan",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                    )
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Text("Best Seller Today",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8.0, left: 16, right: 8),
              height: 450.0,
              child: BooksGridLayout(
                gridCount: 1,
                scrollDirection: Axis.horizontal,
                catalouge: bookCatalougeList,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text("Rekomendasi lainya",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8.0),
              height: 250.0,
              child: BooksGridLayout(
                gridCount: 1,
                scrollDirection: Axis.horizontal,
                catalouge: bookCatalougeList.reversed,
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text("Buku Terbaru",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8.0),
              height: 250.0,
              child: BooksGridLayout(
                gridCount: 1,
                scrollDirection: Axis.horizontal,
                catalouge: bookCatalougeList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
