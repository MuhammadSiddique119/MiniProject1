import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,

      iconSize: 30,
     selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      // selectedFontSize: 14,
      // unselectedFontSize: 14,
      onTap: (value) {},
      items: [
        BottomNavigationBarItem(
            label: '',
            icon:Icon(Icons.home)
            
            
            ),
        BottomNavigationBarItem(
          label: '',
         icon:Icon(Icons.woman)
          
        ),
        BottomNavigationBarItem(
            label: '',
           icon:Icon(Icons.ring_volume)
            
            ),
        BottomNavigationBarItem(
            label: '',
            icon:Icon(Icons.pedal_bike)
            
            ),
        BottomNavigationBarItem(
            label: '',
           icon:Icon(Icons.access_alarm)
          ),
      ],
    );
  }
}