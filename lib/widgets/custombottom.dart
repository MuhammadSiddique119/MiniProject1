import 'package:flutter/material.dart';
import 'package:grocery_app/categories.dart';
import 'package:grocery_app/groceryyhome1.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex=0;
  final List<Widget> pages=[
    groceryhome1(),
    categoriespage()
  ];
  void tapIndex(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex) ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
    
        iconSize: 30,
       selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
        // selectedFontSize: 14,
        // unselectedFontSize: 14,
        onTap: tapIndex,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon:Icon(Icons.home)
              
              
              ),
          BottomNavigationBarItem(
            label: 'Categories',
           icon:Icon(Icons.add_box)
            
          ),
          BottomNavigationBarItem(
              label: 'Favorite',
             icon:Icon(Icons.favorite_outlined)
              
              ),
          BottomNavigationBarItem(
              label: 'More',
              icon:Icon(Icons.more)
              
              ),
        ],
      ),
    );
  }
}