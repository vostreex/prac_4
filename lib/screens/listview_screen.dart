import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<String> books = List.generate(5, (index) => 'Книга ${index + 1}');
  int nextBookId = 6;

  void _addBook() {
    setState(() {
      books.add('Book $nextBookId');
      nextBookId++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _addBook, child: Text('Добавить книгу')),
        Expanded(
          child: ListView(
            children: books.map((book) => GestureDetector(
              onTap: () {
                setState(() {
                  books.remove(book);
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(book, key: ValueKey(book)),
              ),
            )).toList(),
          ),
        ),
      ],
    );
  }
}