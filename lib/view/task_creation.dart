import 'dart:developer';

import 'package:energy_test/injection.dart';
import 'package:energy_test/logic/bloc/task_submit/bloc/task_submit_bloc.dart';
import 'package:energy_test/view/assign_task_dropdown.dart';
import 'package:energy_test/view/display_tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskCreation extends StatelessWidget {
  TaskCreation({super.key});
  final _formKey = GlobalKey<FormState>();

  // void _submitForm() {
  //   if (_formKey.currentState!.validate()) {

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();

    final desc = TextEditingController();
    return BlocProvider<TaskSubmitBloc>(
      create: (context) => getIt<TaskSubmitBloc>(),
      child: Scaffold(
        body: BlocListener<TaskSubmitBloc, TaskSubmitState>(
          listener: (context, state) {
            state.ansSubmitFailureOrSuccess!.fold(
                (l) => null, (r) => SnackBar(content: Text("Task created")));
          },
          child: BlocBuilder<TaskSubmitBloc, TaskSubmitState>(
            builder: (context, state) {
              return SafeArea(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Create a Task:',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: name,
                          decoration: const InputDecoration(
                            // icon: Icon(Icons.person),
                            hintText: 'Task Name',
                          ),
                          validator: (name) {
                            // context
                            //     .read<TaskSubmitBloc>()
                            //     .add(TaskSubmitEvent.taskNameChanged(name!));
                            return (name!.isEmpty)
                                ? 'Task Name is empty'
                                : null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: desc,
                          decoration: const InputDecoration(
                            // icon: Icon(Icons.person),
                            hintText: 'Task Desription',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AssignTaskDropdown(
                          onSubmit: (s) {
                            context
                                .read<TaskSubmitBloc>()
                                .add(TaskSubmitEvent.empIdChanged(s));
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<TaskSubmitBloc>().add(
                                      TaskSubmitEvent.taskDescriptionChanged(
                                          desc.text));
                                  context.read<TaskSubmitBloc>().add(
                                      TaskSubmitEvent.taskNameChanged(
                                          name.text));
                                  context
                                      .read<TaskSubmitBloc>()
                                      .add(TaskSubmitEvent.submitTask());
                                }
                              },
                              child: state.isSubmitting
                                  ? CircularProgressIndicator()
                                  : Text('Submit'),
                            ),
                            ElevatedButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DisplayTaskList()),
                              ),
                              child: const Text('Back'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
