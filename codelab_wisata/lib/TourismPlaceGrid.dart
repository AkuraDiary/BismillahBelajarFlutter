import 'package:flutter/material.dart';

class TourismPlaceGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: 4,
        children: [],
      ),
    );
  }
}