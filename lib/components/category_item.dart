// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  
  final Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            category.cor.withOpacity(0.5),
            category.cor
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.headline6,
        ),

    
    );
    
  }
}