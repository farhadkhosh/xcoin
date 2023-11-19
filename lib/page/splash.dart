import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xxcoin/page/Login.dart';

class Splsh extends StatefulWidget {
  const Splsh({super.key});

  @override
  State<Splsh> createState() => _SplshState();
}

class _SplshState extends State<Splsh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 33, 58),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "XCoin",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            const CupertinoActivityIndicator(
              color: Colors.white,
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
