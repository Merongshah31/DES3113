import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Individual Assignment1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationBarApp(),
    );
  }
}

