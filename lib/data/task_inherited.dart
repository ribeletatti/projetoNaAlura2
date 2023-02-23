import 'package:flutter/material.dart';
import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);


  final List<Task> taskList = [
    const Task('Aprender flutter', 'https://docs.flutter.dev/assets/images/dash/early-dash-sketches5.jpg', 5),
    const Task('Meditar','https://img.freepik.com/vetores-gratis/mulher-relaxada-meditando_23-2148525630.jpg?w=2000', 3),
    const Task('Cozinhar', 'https://img.cybercook.com.br/publicidades/cozinha-1.jpeg?w=623&fit=crop?w=623&fit=crop', 4),
  ];


  void newTask(String name, String photo,int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}