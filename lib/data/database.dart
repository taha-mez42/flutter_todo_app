import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  // Reference to the Hive box
  final _myBox = Hive.box('mybox');
  List toDoList = [];
  //load the data from the database

  void loadData() {
     toDoList = _myBox.get("ToDoList", defaultValue: []);
  }

  // update the database
  void updateDataBase() {
    _myBox.put("ToDoList", toDoList);
  }
}
