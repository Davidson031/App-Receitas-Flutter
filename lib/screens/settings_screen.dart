// ignore_for_file: prefer_const_constructors
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:receitas/components/main_drawer.dart';
import '../models/settings.dart';



class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  var settings = Settings();

  Widget _createSwitch(
      String title, String subtitulo, bool value, Function(bool) onChange) {
    return SwitchListTile.adaptive(
      title: Text(title),
      value: value,
      onChanged: onChange,
      subtitle: Text(subtitulo),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações AppBar'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Filtros',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem Glúten', 
                  'Só exibe refeições sem glúten',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isGlutenFree = value),
                ),
                _createSwitch(
                  'Sem Lactose', 
                  'Só exibe refeições sem Lactose',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isLactoseFree = value),
                ),
                _createSwitch(
                  'Vegana', 
                  'Só exibe veganas',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isVegan = value),        
                ),
                _createSwitch(
                  'Vegetariana', 
                  'Só exibe refeições Vegetarianas',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isVegetarian = value),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
