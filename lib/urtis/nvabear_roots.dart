import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:xxcoin/page/Erro.dart';
import 'package:xxcoin/page/home.dart';

// ================================================================
class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  var _selectedIndex = 0;
  final _screens = [
    const Home(),
//پیام
    const Erro(),

//seting

//cotgory
    const Erro(),

    const Erro(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 3, 33, 58),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: "wallet",
            ),

// =================================بات=================================

            //=============================================

//==========================پیام===========================
            BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration_outlined),
              label: "Discover",
            ),

            //===========================================
            BottomNavigationBarItem(
              icon: Icon(Icons.open_in_browser_outlined),
              label: "Browser",
            ),
//=====================================
//===========================================
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "setting",
            ),
//=====================================
          ],
        ),
      ),
    );
  }
}
