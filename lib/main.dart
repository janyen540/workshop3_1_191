import 'package:flutter/material.dart';
import 'package:workshop3_1_191/screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แนะนำเพื่อน"),
          backgroundColor: const Color.fromARGB(255, 195, 255, 0),
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}