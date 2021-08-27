import 'package:flutter/material.dart';

class LanguageProvider  extends ChangeNotifier{

  int _languagePosition = 0;

  int get languagePosition => _languagePosition;


  void setLanguagePosition(int index){
    _languagePosition = index;
    notifyListeners();
  }




}