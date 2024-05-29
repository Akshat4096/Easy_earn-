import 'package:easy_earn/Screens/FundsScreen.dart';
import 'package:easy_earn/Screens/OrderScreen.dart';
import 'package:easy_earn/Screens/ProfileScreen.dart';
import 'package:easy_earn/Screens/homepage.dart';
import 'package:flutter/material.dart';
class BottomNavi_modal extends StatefulWidget {
  const BottomNavi_modal({super.key});

  @override
  State<BottomNavi_modal> createState() => _BottomNavi_modalState();
}

class _BottomNavi_modalState extends State<BottomNavi_modal> {
  int _indexPage = 0;
  final List<Widget> _pages = [
    Homepage_Sc(),
    Order_Sc(),
    FundsScreen(),
    ProfileScreen(),
  ];

  void _ontapped(int index) {
    setState(() {
      _indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_indexPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        // elevation: 40,
        currentIndex: _indexPage,
        onTap: _ontapped,
        backgroundColor: Colors.black38,
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
              weight: 20,
              color: Colors.blue,
            ),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.collections_bookmark_outlined,
                weight: 20,
                color: Colors.blue,
              ),
              label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_travel,
                weight: 20,
                color: Colors.blue,
              ),
              label: 'Fund'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                weight: 20,
                color: Colors.blue,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}

