import 'dart:ui';

import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        '/categories-meals': (contexto) => CategoriesMealsScreen(),
      },
    );
  }
}
 

 