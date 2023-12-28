class TaskModel {
  String? taskName;
  String? taskDescription;
  String? emp;

  TaskModel({this.taskName, this.taskDescription, this.emp});

  TaskModel.fromJson(Map<String, dynamic> json) {
    taskName = json['taskName'];
    taskDescription = json['taskDescription'];
    emp = json['emp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['taskName'] = taskName;
    data['taskDescription'] = taskDescription;
    data['emp'] = emp;
    return data;
  }
}
