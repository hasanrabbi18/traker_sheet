import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab Task 4"),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I am default style',
                style: TextStyle(fontSize: 18, fontFamily: 'Nunito'),
              ),
              SizedBox(height: 10),
              Text(
                'I am large text',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Nunito Bold Text',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Nunito Italic Text",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Nunito',
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Colour and font both',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Underlined and Strikethrough Nunito Regular Text',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  decoration: TextDecoration.combine([
      TextDecoration.underline,
      TextDecoration.lineThrough,
    ]),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Nunito Regular Text with Letter Spacing and Height',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  letterSpacing: 2.0,
                  height: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Row Text 1 (Nunito Regular) ',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    'Row Text 2 (Nunito Bold)',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}