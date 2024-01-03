part of 'task_details_bloc.dart';

@freezed
class TaskDetailsEvent with _$TaskDetailsEvent {
  const factory TaskDetailsEvent.getTasks() = _Started;
}