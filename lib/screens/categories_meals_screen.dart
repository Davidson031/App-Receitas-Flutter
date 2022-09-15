// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

  late final Category category;

  

  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(

      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por Categoria ${category.id}'),
      ),

    );
    
  }
}