import 'package:flutter/material.dart';

class SeparatedScreen extends StatefulWidget {
  @override
  _SeparatedScreenState createState() => _SeparatedScreenState();
}

class _SeparatedScreenState extends State<SeparatedScreen> {
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
          child: ListView.separated(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    books.removeAt(index);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(book, key: ValueKey(book)),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
          ),
        ),
      ],
    );
  }
}