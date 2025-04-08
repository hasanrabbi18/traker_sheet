import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String displayText = "Press the button";

  void _changeText() {
    setState(() {
      displayText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          "Lab Task 2",
          style: TextStyle(
            fontFamily: 'Nunito',  // Apply Nunito font family
            fontWeight: FontWeight.bold,  // Bold weight for AppBar title
            fontSize: 24,  // Set font size for AppBar title
          ),
        ),
        backgroundColor: Colors.indigo[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: TextStyle(
                fontFamily: 'Nunito',  // Apply Nunito font family
                fontWeight: FontWeight.normal,  // Regular weight for body text
                fontSize: 20,  // Set font size for body text
                color: Colors.white,  // Text color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeText,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(
                  fontFamily: 'Nunito',  // Apply Nunito font family to button text
                  fontWeight: FontWeight.bold,  // Bold weight for button text
                  fontSize: 18,  // Button text size
                ),
              ),
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}