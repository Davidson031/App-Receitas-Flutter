import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:receitas/models/meal.dart';


class MealDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final meal = ModalRoute.of(context)!.settings.arguments as Meal;


    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: const Center(
        child: Text('Detalhes da refeição'),
      ),
    );
  }
}
