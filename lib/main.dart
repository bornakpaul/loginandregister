import 'package:flutter/material.dart';
import 'package:loginandregister/Screens/registerPage.dart';

import 'Screens/loginPage.dart';
import 'Screens/registerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginPage(),
    );
  }
}





