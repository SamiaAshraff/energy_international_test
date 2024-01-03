import 'package:bloc/bloc.dart';
import 'package:energy_test/logic/core/api_failure.dart';
import 'package:energy_test/logic/data/model/task_model.dart';
import 'package:energy_test/logic/data/task_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_details_event.dart';
part 'task_details_state.dart';
part 'task_details_bloc.freezed.dart';

@injectable
class TaskDetailsBloc extends Bloc<TaskDetailsEvent, TaskDetailsState> {
  final TasksRepo _tasksRepo;

  TaskDetailsBloc(this._tasksRepo) : super((TaskDetailsState.initial()));

  @override
  Stream<TaskDetailsState> mapEventToState(
    TaskDetailsEvent event,
  ) async* {
    yield* event.map(getTasks: (e) async* {
      yield TaskDetailsState.loading();
      final data = await _tasksRepo.getTasks();
      yield data.fold((l) => TaskDetailsState.loadFail(l),
          (r) => TaskDetailsState.loadSuccess(r));
    });
  }
}
