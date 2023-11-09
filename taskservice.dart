import 'package:cww5/homepage.dart';
import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];
  
  String? get value => null;
  


  void addTask(String taskName) {
    setState(() {
      tasks.add(Task(name: taskName));
    });
  }

 
  void toggleTaskCompletion(int index) {
    setState(() {
      tasks[index].isCompleted = !tasks[index].isCompleted;
    });
  }


  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager App'),
      ),
      body: Column(
        children: [
          // Text input field and "Add" button
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter task name',
            ),
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                addTask(value);
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Open a dialog to add a task
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Add Task'),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter task name',
                      ),
                      onSubmitted: (value) {
                        if (value.isNotEmpty) {
                          addTask(value);
                          Navigator.pop(context); // Close the dialog
                        }
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                          
                          addTask(value!);
                        },
                        child: Text('Add'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Add'),
          ),
          // Task list
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Checkbox(
                    value: tasks[index].isCompleted,
                    onChanged: (value) {
                      toggleTaskCompletion(index);
                    },
                  ),
                  title: Text(tasks[index].name),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      removeTask(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}