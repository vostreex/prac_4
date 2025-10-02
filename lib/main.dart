import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: items.map((item) => GestureDetector(
          onTap: () {
            setState(() {
              items.remove(item);
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(item),
          ),
        )).toList(),
      ),
    );
  }
}