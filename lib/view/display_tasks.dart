import 'package:energy_test/injection.dart';
import 'package:energy_test/logic/bloc/task_details/bloc/task_details_bloc.dart';
import 'package:energy_test/view/task_creation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayTaskList extends StatelessWidget {
  const DisplayTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    // List tasks = [
    //   {
    //     'taskName': 'Task 1',
    //     'taskDescription': 'Task Desc 1',
    //     'assigned_emp': 'Emp 1'
    //   },
    //   {
    //     'taskName': 'Task 2',
    //     'taskDescription': 'Task Desc 2',
    //     'assigned_emp': 'Emp 2'
    //   },
    //   {
    //     'taskName': 'Task 3',
    //     'taskDescription': 'Task Desc 3',
    //     'assigned_emp': 'Emp 3'
    //   }
    // ];

    return Scaffold(
      body: BlocProvider<TaskDetailsBloc>(
        create: (context) => getIt<TaskDetailsBloc>()
          ..add(
            TaskDetailsEvent.getTasks(),
          ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Task List:',
                        style: TextStyle(fontSize: 20),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TaskCreation()),
                            );
                          },
                          child: Text('Create Task'))
                    ],
                  ),
                  BlocBuilder<TaskDetailsBloc, TaskDetailsState>(
                    builder: (context, state) {
                      return state.map(
                          initial: (_) => Container(),
                          loading: (_) => CircularProgressIndicator(),
                          loadSuccess: (state) {
                            final tasks = state.tasks;
                            return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: state.tasks.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      // tileColor: Colors.blue[100],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.black),
                                      ),
                                      leading: Icon(Icons.task),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Task Name : ${tasks[index].taskName}'),
                                          Text(
                                              'Task Description : ${tasks[index].taskDescription}'),
                                          Text(
                                              'Emp Assigned : ${tasks[index].empId}'),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          loadFail: (_) => Container(
                                child: Text(_.toString()),
                              ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
