

import 'package:flutter/material.dart';
import 'package:genelsinav3/sayfalar/Saglik.dart';
import 'package:genelsinav3/sayfalar/egitim.dart';
import 'package:genelsinav3/sayfalar/test.dart';
import 'package:genelsinav3/sayfalar/ekonomi.dart';
import 'package:genelsinav3/sayfalar/espor.dart';
import 'package:genelsinav3/sayfalar/nedio.dart';
import 'package:genelsinav3/sayfalar/hakkimizda.dart';
import 'package:genelsinav3/sayfalar/kripto.dart';
import 'package:genelsinav3/sayfalar/spor.dart';
import 'package:genelsinav3/sayfalar/yazio.dart';



class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NEDİO"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            ListTile(
              leading: const Icon(Icons.attach_money ),
              title: const Text("KRİPTO PARA"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kripto()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.whatshot),
              title: const Text("TEST'İM"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => test()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_esports),
              title: const Text("E-SPOR"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => espor()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.vpn_key),
              title:const  Text("HAKKIMIZDA"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => hakkimizda()),
                );
              },
            ),
          ],
        ),
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
                        MaterialPageRoute(builder: (context) => egitim()),
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
                            "KİŞİSEL GELİŞİM",
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
                      MaterialPageRoute(builder: (context) => ekonomi()),
                    );
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
                          "BİLGİSEL",
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
                      MaterialPageRoute(builder: (context) => yazio()),
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
                          "YAZIO",
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
                      MaterialPageRoute(builder: (context) => spor()),
                    );
                  },
                  splashColor: Colors.green,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(
                          Icons.sports_football,
                          size: 70.0,
                        ),
                        Text(
                          "SPOR",
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
                      MaterialPageRoute(builder: (context) => saglik()),
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
                          "ZAMAN",
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
                      MaterialPageRoute(builder: (context) => nedio()),
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
                          "NEDİO",
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