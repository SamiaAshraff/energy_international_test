import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const TaskModel._();
  
  const factory TaskModel({
    required String? id,
    required String? taskName,
    required String? taskDescription,
    required String? empId,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

// class TaskModel {
//   String? id;
//   String? taskName;
//   String? taskDescription;
//   String? emp;
//   String? createdAt;
//   int? v;

//   TaskModel(
//       {this.id,
//       this.taskName,
//       this.taskDescription,
//       this.emp,
//       this.createdAt,
//       this.v});

//   TaskModel.fromJson(Map<String, dynamic> json) {
//     id = json['_id'];
//     taskName = json['taskName'];
//     taskDescription = json['taskDescription'];
//     emp = json['empId'];
//     createdAt = json['createdAt'];
//     v = json['__v'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['_id'] = id;
//     data['taskName'] = taskName;
//     data['taskDescription'] = taskDescription;
//     data['empId'] = emp;
//     data['createdAt'] = createdAt;
//     data['__v'] = v;
//     return data;
//   }
// }
