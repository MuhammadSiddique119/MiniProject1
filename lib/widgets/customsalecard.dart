import 'package:flutter/material.dart';

class customsalecard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color;
  const customsalecard({super.key, required this.text1, required this.text2, required this.text3, this.Color});

  @override
  Widget build(BuildContext context) {
    return Container(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    decoration: BoxDecoration(color:Color,borderRadius: BorderRadius.circular(25)),
                    height: 200,width: 350,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(text1,style: TextStyle(color: Colors.white,fontSize: 30),),
                        Text(text2,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight:FontWeight.bold),),
                        Text(text3,style: TextStyle(color: Colors.white,fontSize: 30),)
                      ],
                    ),
                  );
  }
}