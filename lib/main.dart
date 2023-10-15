import 'package:flutter/material.dart';
import 'package:grocery_app/firstscreen.dart';


void main() {

runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:firstscreen(),
    );
  }
} 