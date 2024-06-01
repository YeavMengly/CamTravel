import 'package:cam_travel/src/view/screen/favorite_screen.dart';
import 'package:cam_travel/src/view/screen/home_screen.dart';
import 'package:cam_travel/src/view/screen/place_screen.dart';
import 'package:cam_travel/src/view/screen/setting_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const  List<Widget> widgetOption = <Widget> [
    HomeScreen(),
    PlaceScreen(),
    FavoriteScreen(),
    SettingScreen()

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(91, 123, 182, 100),
        unselectedItemColor: Colors.grey,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: "Place",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ],
      currentIndex: _selectedIndex ,
      onTap: _onItemTapped
      ),
    );
  }
}