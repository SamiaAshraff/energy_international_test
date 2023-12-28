part of 'task_details_bloc.dart';

@freezed
class TaskDetailsState with _$TaskDetailsState {
 const factory TaskDetailsState.initial() = _Initial;
  const factory TaskDetailsState.loading() = _Loading;
  const factory TaskDetailsState.loadSuccess(List<TaskModel> tasks) =
      _LoadSuccess;
  const factory TaskDetailsState.loadFail(ApiFailure failure) = _LoadFail;
}
