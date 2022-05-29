import 'package:flutter/material.dart';

import '../../models/books.dart';
import '../layout/BooksGridLayout.dart';

class HomeTabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 16, top: 20),
                child: const Text("Selamat Datang di Perpustakaan",
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
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: const Text("Best Seller Today",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 8),
              height: 450.0,
              child: BooksGridLayout(
                gridCount: 3,
                scrollDirection: Axis.vertical,
                catalouge: bookCatalougeList,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: const Text("Rekomendasi lainya",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8.0),
              height: 250.0,
              child: BooksGridLayout(
                gridCount: 4,
                scrollDirection: Axis.vertical,
                catalouge: bookCatalougeList.reversed,
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: const Text("Buku Terbaru",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",

                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8.0),
              height: 550.0,
              child: BooksGridLayout(
                gridCount: 2,
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
