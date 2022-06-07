import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:museumproject/Pages/AllMuseum/CityMuseum.dart';
import 'package:museumproject/Pages/FavoriteMusems/FavoriteMusems.dart';
import 'package:museumproject/Pages/Login/LoginPage.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Ana Sayfa"),
          TabData(
            iconData: Icons.search,
            title: "Arama",
          ),
          TabData(iconData: Icons.account_circle, title: "Profil")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return FavoriteMusems();
      case 1:
        return CityMuseum();
      default:
        return LoginPage();
    }
  }
}
