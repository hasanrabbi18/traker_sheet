import 'package:flutter/material.dart';

void main() {
  runApp(SwipeListApp());
}

class SwipeListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SwipeListScreen(),
    );
  }
}

class SwipeListScreen extends StatefulWidget {
  @override
  _SwipeListScreenState createState() => _SwipeListScreenState();
}

class _SwipeListScreenState extends State<SwipeListScreen> {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Item deleted')));
  }

  void _editItem(String item) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Editing $item')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Swipe to Delete/Edit')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: ValueKey(item),
            background: Container(
              color: Colors.green,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.edit, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.delete, color: Colors.white),
            ),
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.startToEnd) {
                _editItem(item);
                return false; // Don't dismiss
              } else if (direction == DismissDirection.endToStart) {
                return true; // Allow delete
              }
              return false;
            },
            onDismissed: (_) => _deleteItem(index),
            child: ListTile(title: Text(item)),
          );
        },
      ),
    );
  }
}