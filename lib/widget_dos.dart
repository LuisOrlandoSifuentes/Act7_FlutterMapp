import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  int _currentIndex = 0;

  final List<Widget> body = const [
    Center(child: Icon(Icons.home, size: 100, color: Color(0xfff4d1a8))),
    Center(child: Icon(Icons.menu, size: 100, color: Color(0xfff4d1a8))),
    Center(child: Icon(Icons.person, size: 100, color: Color(0xfff4d1a8))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página dos'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ← Regresa a la pantalla anterior
          },
        ),
        backgroundColor: Color(0xfff4d1a8),
      ),
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xfff4d1a8),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
