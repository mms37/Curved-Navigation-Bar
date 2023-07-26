import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
List _pages= [
  Text('Home'),
  Text('Home2'),
  Text('Home3'),
  Text('Home4'),
];
 int selectedIndex=0;


  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.add, size: 30),
      const Icon(Icons.person, size: 30),
      const Icon(Icons.settings, size: 30),
    ];
    return MaterialApp( // Wrap with MaterialApp
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Curved Navigation Bar'),
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
                    ),body: _pages.elementAt(selectedIndex),
      ),
    );
  }

}