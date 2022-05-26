import 'package:flutter/material.dart';
import 'package:masak_aja/screen/favourite_screen.dart';
import 'package:masak_aja/screen/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 15, fontWeight: FontWeight.normal, fontFamily: 'lato');
  static const List<Widget> _widgetOptions = <Widget>[
   HomeScreen(title: 'Home'),
    FavScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.orange : Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: _selectedIndex == 1 ? Colors.orange : Colors.grey,
            ),
            label: 'Favorit',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
