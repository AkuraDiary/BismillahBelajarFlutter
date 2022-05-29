import 'package:flutter/material.dart';

import '../../models/books.dart';
import '../layout/BooksGridLayout.dart';

class HomeDesktopLayout extends StatelessWidget {
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

                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8.0, left: 16, right: 8),
              height: 390.0,
              child: BooksGridLayout(
                gridCount: 4,
                scrollDirection: Axis.vertical,
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

                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 6.0),
              height: 350.0,
              child: BooksGridLayout(
                gridCount: 1,
                scrollDirection: Axis.horizontal,
                catalouge: bookCatalougeList.reversed,
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text(
                  "Buku Terbaru",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
              height: 550.0,
              child: BooksGridLayout(
                gridCount: 5,
                scrollDirection: Axis.vertical,
                catalouge: bookCatalougeList.reversed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
