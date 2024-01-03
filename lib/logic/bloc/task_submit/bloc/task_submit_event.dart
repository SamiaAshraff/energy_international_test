part of 'task_submit_bloc.dart';

@freezed
class TaskSubmitEvent with _$TaskSubmitEvent {
  const factory TaskSubmitEvent.taskNameChanged(String taskName) =
      TaskNameChanged;

  const factory TaskSubmitEvent.taskDescriptionChanged(String taskDescription) =
      TaskDescriptionChanged;

  const factory TaskSubmitEvent.empIdChanged(String empId) = EmpIDChanged;
  const factory TaskSubmitEvent.submitTask() = SubmitTask;
}
