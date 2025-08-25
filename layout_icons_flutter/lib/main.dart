import 'package:flutter/material.dart';
import 'column.dart'; // 👈 importamos tu archivo

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: const ColumnPage(), 
      ),
    );
  }
}
