import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Простейший список')),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Элемент ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(item),
      )).toList(),
    );
  }
}