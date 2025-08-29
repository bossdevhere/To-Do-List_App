import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //ref. the box
  final _myBox = Hive.box('mybox');

  //running the fst time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Learn Flutter", false],
    ];
  }

  //load the data from the DB
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
