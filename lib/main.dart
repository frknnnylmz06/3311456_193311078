import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genelsinav3/login_page.dart';
import 'package:genelsinav3/utils/customColors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NEDİO',
        theme: ThemeData(
          scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColor,
        ),
        home: const Scaffold(
          body: LoginPage(),
        ));
  }
}