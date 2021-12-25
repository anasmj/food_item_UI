import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  _AppNavigationBarState createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _navigationIndex = 0;
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        currentIndex: _navigationIndex,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          _navigationIndex = value;
          if (value == 2) Navigator.pushNamed(context, '/cart');
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      );
}
