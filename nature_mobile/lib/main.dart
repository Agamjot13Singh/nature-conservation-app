import 'package:flutter/material.dart';
import 'package:nature_mobile/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Conservation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}