import 'package:flutter/material.dart';
import 'eksayfalar/siir.dart';
import 'eksayfalar/makale.dart';
import 'eksayfalar/hikaye.dart';
import 'eksayfalar/soz.dart';
class yazio extends StatefulWidget {
  @override
  _yazioState createState() => _yazioState();
}

class _yazioState extends State<yazio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YAZIO"),
        backgroundColor: Colors.black,
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
                    MaterialPageRoute(builder: (context) => siir()),

                  );

                },
                splashColor: Colors.green,
                child: Center(

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.library_books,
                        size: 70.0,
                      ),
                      Text(
                        "ŞİİR",
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
                    MaterialPageRoute(builder: (context) => makale()),

                  );

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.library_books,
                        size: 70.0,
                      ),
                      Text(
                        "MAKALE",
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
                    MaterialPageRoute(builder: (context) => hikaye()),

                  );

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.library_books,
                        size: 70.0,
                      ),
                      Text(
                        "HİKAYE",
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
                    MaterialPageRoute(builder: (context) => soz()),

                  );

                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.library_books,
                        size: 70.0,
                      ),
                      Text(
                        "SÖZ",
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
