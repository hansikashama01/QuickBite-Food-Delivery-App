import 'package:flutter/material.dart';
import 'package:quickbite/themes/dark_mode.dart';
import 'package:quickbite/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;


  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darktMode;

 set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if (_themeData == lightMode){
      themeData = darktMode;
    } else {
      themeData = lightMode;
    }
  }
}