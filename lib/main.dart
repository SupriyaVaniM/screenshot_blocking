import 'package:block_screenshot/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screenshot Prevention For Single Screen',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

