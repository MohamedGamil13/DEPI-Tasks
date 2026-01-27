import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(label: "Messi"),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First App',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff9c28b1),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xff9c28b1),
          ),
          child: Center(
            child: Text(
              'Hallo $label',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: .bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
