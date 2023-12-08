import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:test_work/view/controller/bottomnav_provider.dart';


ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedIndexProvider>(  
      builder:(context, value, child) {
        return BottomNavigationBar(
          selectedFontSize: 13,
            currentIndex: value.selectedIndex,
            onTap: (index) {
        value.setIndex(index);      
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor:Colors.white,
            selectedItemColor: const Color.fromARGB(255, 4, 86, 153),
            unselectedItemColor: Colors.black,
            selectedIconTheme: const IconThemeData(color:Color.fromARGB(255, 4, 86, 153),),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_chart,
                  ),
                  label: 'New Orders'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.keyboard_return,
                  ),
                  label: 'Return Order'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.groups_2,
                  ),
                  label: 'Customers'),
            ]);
      },
    );
  }
}