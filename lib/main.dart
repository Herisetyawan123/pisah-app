import 'package:flutter/material.dart';
import 'package:pisah_app/screens/beranda/firts_page.dart';

import 'package:pisah_app/screens/get_started.dart';
import 'package:pisah_app/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pisah Aplication',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}
