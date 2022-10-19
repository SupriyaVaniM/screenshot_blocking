import 'package:block_screenshot/another_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.pink,
          child: const Text('Click on the below button'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:  const Text('Click'),
        onPressed: () {
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AnotherPage()),
  );
        },
      ),
    );
  }
}
