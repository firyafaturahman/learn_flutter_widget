import 'package:flutter/material.dart';

class SampleNavbar extends StatefulWidget {
  const SampleNavbar({super.key});

  @override
  State<SampleNavbar> createState() => _SampleNavbarState();
}

class _SampleNavbarState extends State<SampleNavbar> {
  int selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        iconSize: 30,
        selectedItemColor: Colors.green,
        selectedFontSize: 20,
        backgroundColor: Colors.deepOrange[50],
        currentIndex: selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
