import 'package:flutter/material.dart';

class hakkimizda extends StatefulWidget {
  @override
  _hakkimizdaState createState() => _hakkimizdaState();
}

class _hakkimizdaState extends State<hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hakkında'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('NEDİO', style: TextStyle( color: Colors.white,fontSize: 40.0)) ,

              const Text( ""
                  " "
                  " "
                  "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3311456 kodlu"
                  " "
                  "MOBİL PROGRAMLAMA dersi kapsamında 193311078 numaralı Öğrenci Öğrenir tarafından"
                  " "
                  "17 Haziran 2022 günü yapılmıştır"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
