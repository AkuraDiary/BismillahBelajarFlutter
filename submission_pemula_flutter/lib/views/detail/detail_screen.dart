import 'package:flutter/material.dart';
import 'package:submission_pemula_flutter/views/detail/detail_mobile.dart';

import '../../models/books.dart';

class DetailScreen extends StatelessWidget {
  final Books bookItem;

  DetailScreen({required this.bookItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Text(
                "TODO Layout Detail for Desktop"); //TODO DesktopDetailScreen(bookItem: bookItem);
          } else {
            return DetailMobilePage(bookItem: bookItem);
          }
        },
      ),
    );
  }
}
