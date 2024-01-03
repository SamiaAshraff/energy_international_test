// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String?,
      taskName: json['taskName'] as String?,
      taskDescription: json['taskDescription'] as String?,
      empId: json['empId'] as String?,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'taskName': instance.taskName,
      'taskDescription': instance.taskDescription,
      'empId': instance.empId,
    };
