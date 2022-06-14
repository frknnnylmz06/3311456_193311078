import 'package:flutter/material.dart';

import 'eksayfalar/tatil.dart';
import 'eksayfalar/ev.dart';
import 'eksayfalar/kamp.dart';
import 'eksayfalar/gezi.dart';

class saglik extends StatefulWidget {
  @override
  _saglikState createState() => _saglikState();
}

class _saglikState extends State<saglik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ZAMAN"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding:const EdgeInsets.all(10.0),

        child: GridView.count(

          crossAxisCount: 2,
          children: <Widget>[

            Card(
              margin:const EdgeInsets.all(8.0),
              color: Colors.grey[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => tatil()),

                  );

                },
                splashColor: Colors.green,
                child: Center(

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.wb_sunny,
                        size: 70.0,
                      ),
                      Text(
                        "TATİL",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.grey[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kamp()),

                  );

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.nightlight_round,
                        size: 70.0,
                      ),
                      Text(
                        "KAMP",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.grey[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ev()),

                  );

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                      ),
                      Text(
                        "EV",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin:const EdgeInsets.all(8.0),
              color: Colors.grey[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => gezi()),

                  );

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.settings_accessibility,
                        size: 70.0,
                      ),
                      Text(
                        "GEZİ",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
