import 'dart:developer';

import 'package:flutter/material.dart';

class AssignTaskDropdown extends StatefulWidget {
  AssignTaskDropdown({super.key, required this.onSubmit});

  final StringCallback onSubmit;
  @override
  State<AssignTaskDropdown> createState() => _AssignTaskDropdownState();
}

typedef StringCallback = void Function(String);

class _AssignTaskDropdownState extends State<AssignTaskDropdown> {
  List<String> assignList = <String>['Emp 1', 'Emp 2', 'Emp 3', 'Emp 4'];
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Assign task'),
        const SizedBox(
          width: 15,
        ),
        DropdownMenu<String>(
          initialSelection: assignList.first,
          onSelected: (String? value) {
            setState(() {
              dropdownValue = value!;
              widget.onSubmit(value);
            });
            log(dropdownValue.toString());
          },
          dropdownMenuEntries:
              assignList.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(value: value, label: value);
          }).toList(),
        ),
      ],
    );
  }
}
