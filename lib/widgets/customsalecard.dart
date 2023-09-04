import 'package:flutter/material.dart';

class customsalecard extends StatelessWidget {
  const customsalecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(25)),
                    height: 200,width: 350,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("GET",style: TextStyle(color: Colors.white,fontSize: 30),),
                        Text("50% OFF",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight:FontWeight.bold),),
                        Text("On First 03 Orders",style: TextStyle(color: Colors.white,fontSize: 30),)
                      ],
                    ),
                  );
  }
}