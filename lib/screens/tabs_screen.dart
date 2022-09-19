// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lets Cook!'),
          bottom: TabBar(
            tabs: [
              const Tab(
                icon: Icon(Icons.category),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ]
        ),
      ),
    );
  }
}
