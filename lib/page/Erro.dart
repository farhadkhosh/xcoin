import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Erro extends StatefulWidget {
  const Erro({super.key});

  @override
  State<Erro> createState() => _ErroState();
}

class _ErroState extends State<Erro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 33, 58),
    );
  }
}
