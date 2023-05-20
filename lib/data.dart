import 'package:flutter/material.dart';
class Data extends ChangeNotifier{//for provider extends the change notifier
  int value=0;
  Increment(){
    value++;
    notifyListeners();//for change the state and increment the value
  }
}