import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:energy_test/logic/core/api_failure.dart';
import 'package:energy_test/logic/data/model/task_model.dart';
import 'package:energy_test/logic/data/task_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_submit_event.dart';
part 'task_submit_state.dart';
part 'task_submit_bloc.freezed.dart';

@injectable
class TaskSubmitBloc extends Bloc<TaskSubmitEvent, TaskSubmitState> {
  final TasksRepo _tasksRepo;
  TaskSubmitBloc(this._tasksRepo) : super(TaskSubmitState.initial());

  @override
  Stream<TaskSubmitState> mapEventToState(
    TaskSubmitEvent event,
  ) async* {
    yield* event.map(
      taskNameChanged: (e) async* {
        yield state.copyWith(
          taskName: e.taskName,
          ansSubmitFailureOrSuccess: null,
        );
      },
      taskDescriptionChanged: (e) async* {
        yield state.copyWith(
          taskDescription: e.taskDescription,
          ansSubmitFailureOrSuccess: null,
        );
      },
      empIdChanged: (e) async* {
        yield state.copyWith(
          taskDescription: e.empId,
          ansSubmitFailureOrSuccess: null,
        );
      },
      submitTask: (e) async* {
        yield* _performActionOnDispositionCreate(_tasksRepo.submitTask);
      },
    );
  }

  Stream<TaskSubmitState> _performActionOnDispositionCreate(
    Future<Either<ApiFailure, String>> Function({
      required String name,
      required String desc,
      required int id,
    }) forwardedCall,
  ) async* {
    Either<ApiFailure, String>? failureOrToken;

    yield state.copyWith(
      isSubmitting: true,
      ansSubmitFailureOrSuccess: null,
    );
    failureOrToken = await forwardedCall(
      name: state.taskName,
      desc: state.taskDescription,
      id: state.empId,
    );

    yield state.copyWith(
      isSubmitting: false,
      ansSubmitFailureOrSuccess: failureOrToken,
    );
  }
}
