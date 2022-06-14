import 'package:flutter/material.dart';

class ekonomi extends StatefulWidget {
  @override
  _ekonomiState createState() => _ekonomiState();
}

class _ekonomiState extends State<ekonomi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BİLGİSEL"),
        backgroundColor: Colors.redAccent,
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
                        Icons.paid,
                        size: 70.0,
                      ),
                      Text(
                        "PARA",
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
                        Icons.timeline_sharp,
                        size: 70.0,
                      ),
                      Text(
                        "HAVA DURUMU",
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
