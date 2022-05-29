import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/views/detail/detail_desktop.dart';
import 'package:submission_pemula_flutter/views/detail/detail_mobile.dart';

import '../../models/books.dart';

class DetailScreen extends StatelessWidget {
  final Books bookItem;

  const DetailScreen({required this.bookItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return DetailDesktopPage(bookItem: bookItem);
          } else {
            return DetailMobilePage(bookItem: bookItem);
          }
        },
      ),
    );
  }
}
