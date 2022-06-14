import 'package:flutter/material.dart';
import 'eksayfalar/sinav.dart';
import 'eksayfalar/hayat.dart';
import 'eksayfalar/yazilim.dart';
import 'eksayfalar/kitap.dart';
class egitim extends StatefulWidget {
  @override
  _egitimState createState() => _egitimState();
}

class _egitimState extends State<egitim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KİŞİSEL GELİŞİM"),
        backgroundColor: Colors.yellow[500],
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
                      MaterialPageRoute(builder: (context) => sinav()),

                    );

                  },
                  splashColor: Colors.green,
                  child: Center(

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(
                          Icons.school,
                          size: 70.0,
                        ),
                        Text(
                          "SINAV",
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
                      MaterialPageRoute(builder: (context) => hayat()),

                    );

                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(
                          Icons.favorite,
                          size: 70.0,
                        ),
                        Text(
                          "HAYAT",
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
                      MaterialPageRoute(builder: (context) => yazilim()),

                    );

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
                          "YAZILIM",
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
                      MaterialPageRoute(builder: (context) => kitap()),

                    );

                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(
                          Icons.book,
                          size: 70.0,
                        ),
                        Text(
                          "KİTAPLIK",
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
