import 'package:energy_test/view/assign_task_dropdown.dart';
import 'package:flutter/material.dart';

class TaskCreation extends StatelessWidget {
  TaskCreation({super.key});
  final _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();

    final desc = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create a Task:',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                    // icon: Icon(Icons.person),
                    hintText: 'Task Name',
                  ),
                  validator: (name) {
                    return (name!.isEmpty) ? 'Task Name is empty' : null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: desc,
                  decoration: const InputDecoration(
                    // icon: Icon(Icons.person),
                    hintText: 'Task Desription',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                AssignTaskDropdown(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('Submit'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Back'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
