import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Прокручиваемый список')),
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final List<String> items = List.generate(50, (index) => 'Элемент ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(items[index]),
        );
      },
    );
  }
}
