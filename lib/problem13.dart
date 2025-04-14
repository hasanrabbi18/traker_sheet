import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  ThemeData get _currentTheme =>
      _isDarkMode ? ThemeData.dark() : ThemeData.light();

  void _toggleTheme(bool darkMode) {
    setState(() => _isDarkMode = darkMode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom AppBar with Theme Switcher',
      theme: _currentTheme,
      home: CustomAppBarScreen(
        onToggleTheme: _toggleTheme,
        isDarkMode: _isDarkMode,
      ),
    );
  }
}

class CustomAppBarScreen extends StatelessWidget {
  final Function(bool) onToggleTheme;
  final bool isDarkMode;

  const CustomAppBarScreen({
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              ),
            ),
            SizedBox(width: 10),
            Text('My App'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Search tapped')));
            },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'light') onToggleTheme(false);
              if (value == 'dark') onToggleTheme(true);
            },
            itemBuilder:
                (context) => [
                  PopupMenuItem(value: 'light', child: Text('Light Theme')),
                  PopupMenuItem(value: 'dark', child: Text('Dark Theme')),
                ],
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: isDarkMode ? Colors.black : Colors.blue[50],
        child: Center(
          child: Text('Hello Developer!', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}