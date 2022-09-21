// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../utils/app-routes.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, Function() onTap){

    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.pink,
              ),
            ),
          ),
          SizedBox(
            height: 20
          ),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          ),
        ]
      ),
    );
  }
}
