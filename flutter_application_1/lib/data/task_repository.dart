import 'package:flutter_application_1/models/task_model.dart';

class TaskRepository {
  List<Task> taskList = [];
  int _nextId = 1;

  // Read operation
  List<Task> getTasks() {
    return taskList;
  }

  // Create operation
  void addTask(Task task) {
     task.id = _nextId++;
    _validateTask(task);
    taskList.add(task);
  }

  // Update operation
  void updateTask(Task updatedTask) {
    _validateTask(updatedTask);
      int index = taskList.indexWhere((task) => task.id == updatedTask.id);
      if (index != -1) {
        taskList[index] = updatedTask;
      }
  }

  // Delete operation
  void deleteTask(int taskId) {
    taskList.removeWhere((task) => task.id == taskId);
  }
  void _validateTask(Task task) {
    if (task.title.isEmpty) {
      throw ArgumentError('Task title cannot be empty');
    }
        if (task.description.isEmpty) {
      throw ArgumentError('Task description cannot be empty');
    }
        if (task.priority.isEmpty) {
      throw ArgumentError('Task priority cannot be empty');
    }
        if (task.status.isEmpty) {
      throw ArgumentError('Task status cannot be empty');
    }
  }
}
