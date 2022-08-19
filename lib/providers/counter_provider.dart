

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  int _counter = 100;

  get counter => _counter;

  addCounter(){
    _counter++;
    notifyListeners();
  }

}