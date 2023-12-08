import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_work/view/cart.dart';
import 'package:test_work/view/controller/bottomnav_provider.dart';
import 'package:test_work/view/customers.dart';
import 'package:test_work/view/home/homescreen.dart';
import 'package:test_work/view/mainpage/widgets/bottombar.dart';
import 'package:test_work/view/new_order.dart';
import 'package:test_work/view/retunorder.dart';


class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = [
     HomePage(),
     NewOrders(),
     Cart(),
     ReturnOrder(),
     Customer()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<SelectedIndexProvider>(
          builder: (context, value,child) {
            return value.selectedIndex < pages.length
                ? pages[value.selectedIndex]
                : const Center(child: Text("Not Found"));
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidgets(),
    );
  }
}
