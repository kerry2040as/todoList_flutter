import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];
  void addTask(String title) {
    print('add Task!');
    tasks.add(Task(name: title));
    notifyListeners();
  }
}
