import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 11',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Display an image from local asset')

        ),
        body: Center(
          child: Image.asset('assets/images/img3.jpg',width: 300),
          
        ),

      ),
    );
  }
}