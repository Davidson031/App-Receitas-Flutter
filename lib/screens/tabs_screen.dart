// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';
import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';
import '../screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();

    _screens = [
      {'title': 'Lista de Categorias', 'tela': CategoriesScreen()},
      {'title': 'Meus Favoritos', 'tela': FavoriteScreen(widget.favoriteMeals)},
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title'] as String),
      ),
      body: _screens[_selectedScreenIndex]['tela'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.pink,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
