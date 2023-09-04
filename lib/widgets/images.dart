import 'package:flutter/material.dart';

class images extends StatelessWidget {
  const images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Image(image: AssetImage('assets/images1/shopping-cart.png')));
  }
}