import 'package:flutter/material.dart';
import 'package:xxcoin/page/Home.dart';
import 'package:xxcoin/page/splash.dart';
import 'package:xxcoin/urtis/nvabear_roots.dart';

void main() {
  runApp(const Coin());
}

class Coin extends StatelessWidget {
  const Coin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splsh(),
      routes: {
        '/home': (context) => const Home(),
        '/nav': (context) => const NavBarRoots(),
      },
    );
  }
}
