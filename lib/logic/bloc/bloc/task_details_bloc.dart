import 'package:bloc/bloc.dart';
import 'package:energy_test/logic/core/api_failure.dart';
import 'package:energy_test/logic/data/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_details_event.dart';
part 'task_details_state.dart';
part 'task_details_bloc.freezed.dart';

class TaskDetailsBloc extends Bloc<TaskDetailsEvent, TaskDetailsState> {
  // List<TaskModel>? tasks;
  List<TaskModel> taskList = [
    TaskModel(
        taskName: 'Task 1', taskDescription: 'Task  desc 1', emp: 'Emp 1'),
    TaskModel(
        taskName: 'Task 2', taskDescription: 'Task  desc 2', emp: 'Emp 2'),
    TaskModel(taskName: 'Task 3', taskDescription: 'Task  desc 3', emp: 'Emp 3')
  ];

  TaskDetailsBloc(this.taskList) : super((TaskDetailsState.initial()));

  @override
  Stream<TaskDetailsState> mapEventToState(
    TaskDetailsEvent event,
  ) async* {
    yield* event.map(getTasks: (e) async* {
      yield TaskDetailsState.loading();
      final data = taskList;
      TaskDetailsState.loadSuccess(data);
      // yield data.fold((l) => TaskDetailsState.loadFail(l),
      //     (r) => TaskDetailsState.loadSuccess(r));
    });
  }
}
