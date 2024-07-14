import 'package:flutter/material.dart';
import 'package:sdym/pages/home.dart';
import 'package:sdym/pages/login.dart';
import 'package:sdym/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S_DYM',
      initialRoute: '/',
      routes: {
        '/': (context) => splash_screen(),
        '/login': (context) => login(),
        '/home': (context) => home(),
      },
    );
  }
}
