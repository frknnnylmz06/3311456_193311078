import 'dart:ui';
import 'package:flutter/material.dart';


class sinav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          "SINAV",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: _sinav(),
    );
  }
}

class _sinav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/kitap.jpg"), fit: BoxFit.cover),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.113,
              height: MediaQuery.of(context).size.height,
              //alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 0, right: 0, top: 250, bottom: 0),
              child: const Text(
                  "Üniversite öğrencilerinin neden derece almak için okuduğunu hiç merak ettiniz mi? Okuma, bize bilmediğimiz bir şeyler öğreten bir aktivitedir. Eğitici ya da kurgusal romanlar; her ne okursanız okuyun bir şeyler öğrenirsiniz. Alanınızın dışında bir şey okuduğunuzda yeni bilgiler edinirsiniz. Sosyal becerilerinizi, okumadan edinilen bilgi hazinesiyle geliştirebilirsiniz. Okumak sizi ilginçleştirir. Konuşmanızı akıcı yaptığı gibi, insanlarla iletişiminizde sizi etkili yapar.",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Color(0xFF5A2525),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
