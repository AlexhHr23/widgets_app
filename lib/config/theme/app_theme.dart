import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.orange,
  Colors.purple,
  Colors.pink,
];

class AppTheme {

  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false,
  }): assert(selectedColor >= 0, 'Selected color must be greater than 0'),
      assert(selectedColor < colorList.length, 
      'Selected color must be less or equal than 0 ${colorList.length -1 }');
  
  ThemeData getTheme() => ThemeData(
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
  );
}