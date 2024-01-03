part of 'task_submit_bloc.dart';

@freezed
class TaskSubmitState with _$TaskSubmitState {
  const factory TaskSubmitState({
    required String taskName,
    required String taskDescription,
    required int empId,
    required bool isSubmitting,
    required Either<ApiFailure, String>? ansSubmitFailureOrSuccess,
  }) = _TaskSubmitState;
  factory TaskSubmitState.initial() => const TaskSubmitState(
        taskName: '',
        taskDescription: '',
        empId: -1,
        isSubmitting: false,
        ansSubmitFailureOrSuccess: null,
      );
}
