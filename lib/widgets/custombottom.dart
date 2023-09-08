import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,

      iconSize: 30,
     selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      // selectedFontSize: 14,
      // unselectedFontSize: 14,
      onTap: (value) {},
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
    );
  }
}