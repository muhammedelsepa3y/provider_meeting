import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class DeskStorage extends ChangeNotifier{
  int counter=-1;
 getCounter()async{
   var box=await Hive.openBox("counterBox");
   counter= box.get("counterValue")??0;
   notifyListeners();
 }
 incrementCounter()async{
   var box =  await Hive.openBox("counterBox");
    counter=(counter+1);
    box.put("counterValue", counter);
    notifyListeners();
 }

}