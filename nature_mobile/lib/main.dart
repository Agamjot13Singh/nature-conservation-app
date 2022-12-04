import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nature_mobile/screens/home_page.dart';
import 'package:nature_mobile/screens/sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Set the navigation bar to be transparent
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    return MaterialApp(
      title: 'Nature Conservation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
