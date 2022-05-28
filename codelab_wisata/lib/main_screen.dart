import 'package:codelab_wisata/detail_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata bandung"),
      ),
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(context){
            return DetailScreen();
          }));
        },
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*IMAGES*/
              Expanded(
                flex: 1,
                child: Image.asset('images/farm-house.jpg'),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "Farm Hous Lembang",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Lembang"),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}
