class Task {
  String name;
  bool isCompleted;
  List<Task> subTasks;

  Task({required this.name, this.isCompleted = false, this.subTasks = const []});
}