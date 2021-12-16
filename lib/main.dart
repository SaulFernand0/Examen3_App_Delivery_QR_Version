import 'package:app_examen/src/homPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: homePage.id,
      routes: {
        homePage.id: (context) => homePage(),
      },
    );
  }
}

