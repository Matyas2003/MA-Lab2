import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/task_repository.dart';
import 'package:flutter_application_1/models/task_model.dart';

class TaskViewModel extends ChangeNotifier {
  final TaskRepository _repository = TaskRepository();
  
  List<Task> getTasks() {
    return _repository.getTasks();
  }

  void addTask(Task task) {
    _repository.addTask(task);
    notifyListeners(); // Notify listeners when changes occur
  }

  void updateTask(Task updatedTask) {
    _repository.updateTask(updatedTask);
    notifyListeners();
  }

  void deleteTask(int taskId) {
    _repository.deleteTask(taskId);
    notifyListeners();
  }
}