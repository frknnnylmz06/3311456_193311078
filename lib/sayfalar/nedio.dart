import 'package:flutter/material.dart';
import 'eksayfalar/falss.dart';

class nedio extends StatefulWidget {
  @override
  _nedioState createState() => _nedioState();
}

class _nedioState extends State<nedio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NEDİO"),
        backgroundColor: Colors.yellow[500],
      ),
      body: Container(
        padding:const EdgeInsets.all(10.0),

        child: GridView.count(

          crossAxisCount: 2,
          children: <Widget>[

            Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.grey[100],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => falss()),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.auto_fix_high,
                        size: 70.0,
                      ),
                      Text(
                        "FALSS",
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
                        "TEST",
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
                        Icons.psychology,
                        size: 70.0,
                      ),
                      Text(
                        "KOMİK",
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
                        Icons.store,
                        size: 70.0,
                      ),
                      Text(
                        "TREND",
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
