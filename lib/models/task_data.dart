import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: "Buy egg"),
    Tasks(name: "Complete flutter"),
    Tasks(name: "Do exercise"),
  ];

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
