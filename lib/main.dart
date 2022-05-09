import 'package:flutter/material.dart';

import 'catalog_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

