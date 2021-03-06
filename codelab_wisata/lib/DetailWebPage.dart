import 'package:codelab_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailWebPage extends StatefulWidget {
  final TourismPlace place;

  DetailWebPage({required this.place});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

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
                                icon: Icon(Icons.arrow_back, color: Colors.blue),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          Text(
                            "Wisata bandung",
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Staatliches',
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
                              ClipRRect(
                                child: Image.asset(widget.place.imageAsset),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              SizedBox(height: 16),
                              Scrollbar(
                                thumbVisibility: true,
                                controller: _scrollerController,
                                child: Container(
                                  height: 150,
                                  padding:
                                  const EdgeInsets.only(bottom: 16),
                                  child: ListView(
                                    controller: _scrollerController,
                                    scrollDirection: Axis.horizontal,
                                    children: widget.place.imageUrls.map((url) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Image.network(url),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                      ),
                      SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    widget.place.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'Staatliches',
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.calendar_today),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.place.openDays,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.access_time),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.place.openTime,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.monetization_on),
                                    SizedBox(width: 8.0),
                                    Text(
                                      widget.place.ticketPrice,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Text(
                                    widget.place.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Oxygen',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
