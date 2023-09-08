import 'package:flutter/material.dart';
import 'package:grocery_app/categories.dart';
import 'package:grocery_app/firstscreen.dart';

void main() {

runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:categoriespage(),
    );
  }
} 