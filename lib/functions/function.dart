import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sql_db_impilimentation/model/model.dart';

ValueNotifier<List<Student>> studentlistnotifier = ValueNotifier([]);
Future<void> addstudentlist(Student value) async {
    //value.id = id;
  studentlistnotifier.value.add(value);
  //print(value.toString());
  studentlistnotifier.notifyListeners();
}

Future<void> getstudentlist() async {  
  studentlistnotifier.notifyListeners();
}

Future<void> deletestudentlist(int id) async {
  getstudentlist();
}

Future<void> updatelist(int index,Student value) async {
  getstudentlist();
}
