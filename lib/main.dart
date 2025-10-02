import 'package:flutter/material.dart';
import 'screens/separated_screen.dart';
import 'screens/column_screen.dart';
import 'screens/listview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    ColumnScreen(),
    ListViewScreen(),
    SeparatedScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Список книг')),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.view_column), label: 'Column'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'ListView'),
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'Separated'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}