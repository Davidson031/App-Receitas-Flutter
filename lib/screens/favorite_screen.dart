// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/meal.dart';
import 'package:flutter/material.dart';
import '../components/meal-item.dart';

class FavoriteScreen extends StatelessWidget {
  

  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {

    if(favoriteMeals.isEmpty){
      return Center(
        child: Text('Nenhuma comida favorita!'),
      );
    } else{
      return ListView.builder(

        itemCount: favoriteMeals.length,
        itemBuilder: (contexto, index){
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}