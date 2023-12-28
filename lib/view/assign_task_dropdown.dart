import 'package:flutter/material.dart';

class AssignTaskDropdown extends StatefulWidget {
  @override
  State<AssignTaskDropdown> createState() => _AssignTaskDropdownState();
}

class _AssignTaskDropdownState extends State<AssignTaskDropdown> {
  List<String> assignList = <String>['Emp 1', 'Emp 2', 'Emp 3', 'Emp 4'];
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Assign task'),
        SizedBox(
          width: 15,
        ),
        DropdownMenu<String>(
          initialSelection: assignList.first,
          onSelected: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
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
