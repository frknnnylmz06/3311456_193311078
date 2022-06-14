import 'package:flutter/material.dart';

class spor extends StatefulWidget {
  @override
  _sporState createState() => _sporState();
}

class _sporState extends State<spor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPOR"),
        backgroundColor: Colors.blue,
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

                },
                splashColor: Colors.green,
                child: Center(

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.sports_soccer,
                        size: 70.0,
                      ),
                      Text(
                        "FUTBOL",
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

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.sports_basketball,
                        size: 70.0,
                      ),
                      Text(
                        "BASKETBOL",
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

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.sports_volleyball,
                        size: 70.0,
                      ),
                      Text(
                        "VOLEYBOL",
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

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.directions_car,
                        size: 70.0,
                      ),
                      Text(
                        "F1",
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
