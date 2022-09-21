import 'dart:ui';
import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app-routes.dart';
import 'package:receitas/screens/meal_detail-screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/settings_screen.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';
import 'models/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings myAppSetting = Settings();

  List<Meal> _avaliableMeals = dummyMeals;

  List<Meal> favoriteMeals = [];

  void _applySettings(Settings settings) {
    setState(() {
      myAppSetting = settings;

      _avaliableMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  void _toggleFavorite(Meal meal){

    setState(() {     
      favoriteMeals.contains(meal) ? favoriteMeals.remove(meal) : favoriteMeals.add(meal);
    });
  }

  bool isFavorite(Meal meal){

    return favoriteMeals.contains(meal);
  
  }

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
        AppRoutes.HOME: (contexto) => TabsScreen(favoriteMeals),
        AppRoutes.CATEGORIES_MEALS: (contexto) =>
            CategoriesMealsScreen(_avaliableMeals),
        AppRoutes.MEAL_DETAIL: (contexto) => MealDetailScreen(_toggleFavorite, isFavorite),
        AppRoutes.SETTINGS: (contexto) =>
            SettingsScreen(_applySettings, myAppSetting),
      },
    );
  }
}
