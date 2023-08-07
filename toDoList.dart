import 'dart:io';

void main() {
  List<String> tasks = [];
  int i = 0;
  while (true) {
    print(
        "Choose the number:(1) Add task (2)Check tasks (3)Delete tasks (4)Exit");
    String? input1 = stdin.readLineSync()!;
    switch (input1) {
      case '1':
        addTask(tasks);
        break;
      case '2':
        checkTask(tasks);
        break;
      case '3':
        deleteTasks(tasks);
        break;

      case '4':
        exit(0);
    }
    i;
  }
}

void addTask(List<String> tasks) {
  print("Hello guys,write your task here to add.");
  String? task = stdin.readLineSync()!;
  tasks.add(task);
  print("Your task is successfully added, Guy!;");
}

void checkTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No task in here, Guys!.You haven't added your task yet!");
  } else {
    print("Here you go");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}:${tasks[i]}");
    }
  }
}

void deleteTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks are here!");
  } else {
    checkTask(tasks);
    print("Enter the task number to delete the task!");
    int? tasknum = int.parse(stdin.readLineSync()!);
    if (tasknum >= 1 && tasknum <= tasks.length) {
      tasks.removeAt(tasknum - 1);
      print("successfully deleted!");
    } else {
      print("Invalid input");
    }
  }
}
