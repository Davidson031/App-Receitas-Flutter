import 'dart:ui';
import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app-routes.dart';
import 'package:receitas/screens/meal_detail-screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/settings_screen.dart';

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
      routes: {
        AppRoutes.HOME: (contexto) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (contexto) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (contexto) => MealDetailScreen(),
        AppRoutes.SETTINGS: (contexto) => Settings(),
      },
    
    );
  }
}