import 'package:dsmscannercode/constants.dart';
import 'package:dsmscannercode/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const QBApp());
}

class QBApp extends StatelessWidget {
  const QBApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Comfortaa",
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
