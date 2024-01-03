// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_submit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskSubmitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskName) taskNameChanged,
    required TResult Function(String taskDescription) taskDescriptionChanged,
    required TResult Function(String empId) empIdChanged,
    required TResult Function() submitTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskName)? taskNameChanged,
    TResult? Function(String taskDescription)? taskDescriptionChanged,
    TResult? Function(String empId)? empIdChanged,
    TResult? Function()? submitTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskName)? taskNameChanged,
    TResult Function(String taskDescription)? taskDescriptionChanged,
    TResult Function(String empId)? empIdChanged,
    TResult Function()? submitTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNameChanged value) taskNameChanged,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(EmpIDChanged value) empIdChanged,
    required TResult Function(SubmitTask value) submitTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNameChanged value)? taskNameChanged,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(EmpIDChanged value)? empIdChanged,
    TResult? Function(SubmitTask value)? submitTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNameChanged value)? taskNameChanged,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(EmpIDChanged value)? empIdChanged,
    TResult Function(SubmitTask value)? submitTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSubmitEventCopyWith<$Res> {
  factory $TaskSubmitEventCopyWith(
          TaskSubmitEvent value, $Res Function(TaskSubmitEvent) then) =
      _$TaskSubmitEventCopyWithImpl<$Res, TaskSubmitEvent>;
}

/// @nodoc
class _$TaskSubmitEventCopyWithImpl<$Res, $Val extends TaskSubmitEvent>
    implements $TaskSubmitEventCopyWith<$Res> {
  _$TaskSubmitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskNameChangedImplCopyWith<$Res> {
  factory _$$TaskNameChangedImplCopyWith(_$TaskNameChangedImpl value,
          $Res Function(_$TaskNameChangedImpl) then) =
      __$$TaskNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskName});
}

/// @nodoc
class __$$TaskNameChangedImplCopyWithImpl<$Res>
    extends _$TaskSubmitEventCopyWithImpl<$Res, _$TaskNameChangedImpl>
    implements _$$TaskNameChangedImplCopyWith<$Res> {
  __$$TaskNameChangedImplCopyWithImpl(
      _$TaskNameChangedImpl _value, $Res Function(_$TaskNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
  }) {
    return _then(_$TaskNameChangedImpl(
      null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskNameChangedImpl implements TaskNameChanged {
  const _$TaskNameChangedImpl(this.taskName);

  @override
  final String taskName;

  @override
  String toString() {
    return 'TaskSubmitEvent.taskNameChanged(taskName: $taskName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskNameChangedImpl &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskNameChangedImplCopyWith<_$TaskNameChangedImpl> get copyWith =>
      __$$TaskNameChangedImplCopyWithImpl<_$TaskNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskName) taskNameChanged,
    required TResult Function(String taskDescription) taskDescriptionChanged,
    required TResult Function(String empId) empIdChanged,
    required TResult Function() submitTask,
  }) {
    return taskNameChanged(taskName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskName)? taskNameChanged,
    TResult? Function(String taskDescription)? taskDescriptionChanged,
    TResult? Function(String empId)? empIdChanged,
    TResult? Function()? submitTask,
  }) {
    return taskNameChanged?.call(taskName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskName)? taskNameChanged,
    TResult Function(String taskDescription)? taskDescriptionChanged,
    TResult Function(String empId)? empIdChanged,
    TResult Function()? submitTask,
    required TResult orElse(),
  }) {
    if (taskNameChanged != null) {
      return taskNameChanged(taskName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNameChanged value) taskNameChanged,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(EmpIDChanged value) empIdChanged,
    required TResult Function(SubmitTask value) submitTask,
  }) {
    return taskNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNameChanged value)? taskNameChanged,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(EmpIDChanged value)? empIdChanged,
    TResult? Function(SubmitTask value)? submitTask,
  }) {
    return taskNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNameChanged value)? taskNameChanged,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(EmpIDChanged value)? empIdChanged,
    TResult Function(SubmitTask value)? submitTask,
    required TResult orElse(),
  }) {
    if (taskNameChanged != null) {
      return taskNameChanged(this);
    }
    return orElse();
  }
}

abstract class TaskNameChanged implements TaskSubmitEvent {
  const factory TaskNameChanged(final String taskName) = _$TaskNameChangedImpl;

  String get taskName;
  @JsonKey(ignore: true)
  _$$TaskNameChangedImplCopyWith<_$TaskNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDescriptionChangedImplCopyWith<$Res> {
  factory _$$TaskDescriptionChangedImplCopyWith(
          _$TaskDescriptionChangedImpl value,
          $Res Function(_$TaskDescriptionChangedImpl) then) =
      __$$TaskDescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskDescription});
}

/// @nodoc
class __$$TaskDescriptionChangedImplCopyWithImpl<$Res>
    extends _$TaskSubmitEventCopyWithImpl<$Res, _$TaskDescriptionChangedImpl>
    implements _$$TaskDescriptionChangedImplCopyWith<$Res> {
  __$$TaskDescriptionChangedImplCopyWithImpl(
      _$TaskDescriptionChangedImpl _value,
      $Res Function(_$TaskDescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskDescription = null,
  }) {
    return _then(_$TaskDescriptionChangedImpl(
      null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDescriptionChangedImpl implements TaskDescriptionChanged {
  const _$TaskDescriptionChangedImpl(this.taskDescription);

  @override
  final String taskDescription;

  @override
  String toString() {
    return 'TaskSubmitEvent.taskDescriptionChanged(taskDescription: $taskDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDescriptionChangedImpl &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDescriptionChangedImplCopyWith<_$TaskDescriptionChangedImpl>
      get copyWith => __$$TaskDescriptionChangedImplCopyWithImpl<
          _$TaskDescriptionChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskName) taskNameChanged,
    required TResult Function(String taskDescription) taskDescriptionChanged,
    required TResult Function(String empId) empIdChanged,
    required TResult Function() submitTask,
  }) {
    return taskDescriptionChanged(taskDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskName)? taskNameChanged,
    TResult? Function(String taskDescription)? taskDescriptionChanged,
    TResult? Function(String empId)? empIdChanged,
    TResult? Function()? submitTask,
  }) {
    return taskDescriptionChanged?.call(taskDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskName)? taskNameChanged,
    TResult Function(String taskDescription)? taskDescriptionChanged,
    TResult Function(String empId)? empIdChanged,
    TResult Function()? submitTask,
    required TResult orElse(),
  }) {
    if (taskDescriptionChanged != null) {
      return taskDescriptionChanged(taskDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNameChanged value) taskNameChanged,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(EmpIDChanged value) empIdChanged,
    required TResult Function(SubmitTask value) submitTask,
  }) {
    return taskDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNameChanged value)? taskNameChanged,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(EmpIDChanged value)? empIdChanged,
    TResult? Function(SubmitTask value)? submitTask,
  }) {
    return taskDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNameChanged value)? taskNameChanged,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(EmpIDChanged value)? empIdChanged,
    TResult Function(SubmitTask value)? submitTask,
    required TResult orElse(),
  }) {
    if (taskDescriptionChanged != null) {
      return taskDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class TaskDescriptionChanged implements TaskSubmitEvent {
  const factory TaskDescriptionChanged(final String taskDescription) =
      _$TaskDescriptionChangedImpl;

  String get taskDescription;
  @JsonKey(ignore: true)
  _$$TaskDescriptionChangedImplCopyWith<_$TaskDescriptionChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmpIDChangedImplCopyWith<$Res> {
  factory _$$EmpIDChangedImplCopyWith(
          _$EmpIDChangedImpl value, $Res Function(_$EmpIDChangedImpl) then) =
      __$$EmpIDChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String empId});
}

/// @nodoc
class __$$EmpIDChangedImplCopyWithImpl<$Res>
    extends _$TaskSubmitEventCopyWithImpl<$Res, _$EmpIDChangedImpl>
    implements _$$EmpIDChangedImplCopyWith<$Res> {
  __$$EmpIDChangedImplCopyWithImpl(
      _$EmpIDChangedImpl _value, $Res Function(_$EmpIDChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empId = null,
  }) {
    return _then(_$EmpIDChangedImpl(
      null == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmpIDChangedImpl implements EmpIDChanged {
  const _$EmpIDChangedImpl(this.empId);

  @override
  final String empId;

  @override
  String toString() {
    return 'TaskSubmitEvent.empIdChanged(empId: $empId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmpIDChangedImpl &&
            (identical(other.empId, empId) || other.empId == empId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, empId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmpIDChangedImplCopyWith<_$EmpIDChangedImpl> get copyWith =>
      __$$EmpIDChangedImplCopyWithImpl<_$EmpIDChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskName) taskNameChanged,
    required TResult Function(String taskDescription) taskDescriptionChanged,
    required TResult Function(String empId) empIdChanged,
    required TResult Function() submitTask,
  }) {
    return empIdChanged(empId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskName)? taskNameChanged,
    TResult? Function(String taskDescription)? taskDescriptionChanged,
    TResult? Function(String empId)? empIdChanged,
    TResult? Function()? submitTask,
  }) {
    return empIdChanged?.call(empId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskName)? taskNameChanged,
    TResult Function(String taskDescription)? taskDescriptionChanged,
    TResult Function(String empId)? empIdChanged,
    TResult Function()? submitTask,
    required TResult orElse(),
  }) {
    if (empIdChanged != null) {
      return empIdChanged(empId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNameChanged value) taskNameChanged,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(EmpIDChanged value) empIdChanged,
    required TResult Function(SubmitTask value) submitTask,
  }) {
    return empIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNameChanged value)? taskNameChanged,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(EmpIDChanged value)? empIdChanged,
    TResult? Function(SubmitTask value)? submitTask,
  }) {
    return empIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNameChanged value)? taskNameChanged,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(EmpIDChanged value)? empIdChanged,
    TResult Function(SubmitTask value)? submitTask,
    required TResult orElse(),
  }) {
    if (empIdChanged != null) {
      return empIdChanged(this);
    }
    return orElse();
  }
}

abstract class EmpIDChanged implements TaskSubmitEvent {
  const factory EmpIDChanged(final String empId) = _$EmpIDChangedImpl;

  String get empId;
  @JsonKey(ignore: true)
  _$$EmpIDChangedImplCopyWith<_$EmpIDChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitTaskImplCopyWith<$Res> {
  factory _$$SubmitTaskImplCopyWith(
          _$SubmitTaskImpl value, $Res Function(_$SubmitTaskImpl) then) =
      __$$SubmitTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitTaskImplCopyWithImpl<$Res>
    extends _$TaskSubmitEventCopyWithImpl<$Res, _$SubmitTaskImpl>
    implements _$$SubmitTaskImplCopyWith<$Res> {
  __$$SubmitTaskImplCopyWithImpl(
      _$SubmitTaskImpl _value, $Res Function(_$SubmitTaskImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitTaskImpl implements SubmitTask {
  const _$SubmitTaskImpl();

  @override
  String toString() {
    return 'TaskSubmitEvent.submitTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskName) taskNameChanged,
    required TResult Function(String taskDescription) taskDescriptionChanged,
    required TResult Function(String empId) empIdChanged,
    required TResult Function() submitTask,
  }) {
    return submitTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taskName)? taskNameChanged,
    TResult? Function(String taskDescription)? taskDescriptionChanged,
    TResult? Function(String empId)? empIdChanged,
    TResult? Function()? submitTask,
  }) {
    return submitTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskName)? taskNameChanged,
    TResult Function(String taskDescription)? taskDescriptionChanged,
    TResult Function(String empId)? empIdChanged,
    TResult Function()? submitTask,
    required TResult orElse(),
  }) {
    if (submitTask != null) {
      return submitTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskNameChanged value) taskNameChanged,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(EmpIDChanged value) empIdChanged,
    required TResult Function(SubmitTask value) submitTask,
  }) {
    return submitTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskNameChanged value)? taskNameChanged,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(EmpIDChanged value)? empIdChanged,
    TResult? Function(SubmitTask value)? submitTask,
  }) {
    return submitTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskNameChanged value)? taskNameChanged,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(EmpIDChanged value)? empIdChanged,
    TResult Function(SubmitTask value)? submitTask,
    required TResult orElse(),
  }) {
    if (submitTask != null) {
      return submitTask(this);
    }
    return orElse();
  }
}

abstract class SubmitTask implements TaskSubmitEvent {
  const factory SubmitTask() = _$SubmitTaskImpl;
}

/// @nodoc
mixin _$TaskSubmitState {
  String get taskName => throw _privateConstructorUsedError;
  String get taskDescription => throw _privateConstructorUsedError;
  int get empId => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<ApiFailure, String>? get ansSubmitFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskSubmitStateCopyWith<TaskSubmitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSubmitStateCopyWith<$Res> {
  factory $TaskSubmitStateCopyWith(
          TaskSubmitState value, $Res Function(TaskSubmitState) then) =
      _$TaskSubmitStateCopyWithImpl<$Res, TaskSubmitState>;
  @useResult
  $Res call(
      {String taskName,
      String taskDescription,
      int empId,
      bool isSubmitting,
      Either<ApiFailure, String>? ansSubmitFailureOrSuccess});
}

/// @nodoc
class _$TaskSubmitStateCopyWithImpl<$Res, $Val extends TaskSubmitState>
    implements $TaskSubmitStateCopyWith<$Res> {
  _$TaskSubmitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? taskDescription = null,
    Object? empId = null,
    Object? isSubmitting = null,
    Object? ansSubmitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      empId: null == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      ansSubmitFailureOrSuccess: freezed == ansSubmitFailureOrSuccess
          ? _value.ansSubmitFailureOrSuccess
          : ansSubmitFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ApiFailure, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskSubmitStateImplCopyWith<$Res>
    implements $TaskSubmitStateCopyWith<$Res> {
  factory _$$TaskSubmitStateImplCopyWith(_$TaskSubmitStateImpl value,
          $Res Function(_$TaskSubmitStateImpl) then) =
      __$$TaskSubmitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskName,
      String taskDescription,
      int empId,
      bool isSubmitting,
      Either<ApiFailure, String>? ansSubmitFailureOrSuccess});
}

/// @nodoc
class __$$TaskSubmitStateImplCopyWithImpl<$Res>
    extends _$TaskSubmitStateCopyWithImpl<$Res, _$TaskSubmitStateImpl>
    implements _$$TaskSubmitStateImplCopyWith<$Res> {
  __$$TaskSubmitStateImplCopyWithImpl(
      _$TaskSubmitStateImpl _value, $Res Function(_$TaskSubmitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? taskDescription = null,
    Object? empId = null,
    Object? isSubmitting = null,
    Object? ansSubmitFailureOrSuccess = freezed,
  }) {
    return _then(_$TaskSubmitStateImpl(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      empId: null == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      ansSubmitFailureOrSuccess: freezed == ansSubmitFailureOrSuccess
          ? _value.ansSubmitFailureOrSuccess
          : ansSubmitFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ApiFailure, String>?,
    ));
  }
}

/// @nodoc

class _$TaskSubmitStateImpl implements _TaskSubmitState {
  const _$TaskSubmitStateImpl(
      {required this.taskName,
      required this.taskDescription,
      required this.empId,
      required this.isSubmitting,
      required this.ansSubmitFailureOrSuccess});

  @override
  final String taskName;
  @override
  final String taskDescription;
  @override
  final int empId;
  @override
  final bool isSubmitting;
  @override
  final Either<ApiFailure, String>? ansSubmitFailureOrSuccess;

  @override
  String toString() {
    return 'TaskSubmitState(taskName: $taskName, taskDescription: $taskDescription, empId: $empId, isSubmitting: $isSubmitting, ansSubmitFailureOrSuccess: $ansSubmitFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSubmitStateImpl &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription) &&
            (identical(other.empId, empId) || other.empId == empId) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.ansSubmitFailureOrSuccess,
                    ansSubmitFailureOrSuccess) ||
                other.ansSubmitFailureOrSuccess == ansSubmitFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName, taskDescription, empId,
      isSubmitting, ansSubmitFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSubmitStateImplCopyWith<_$TaskSubmitStateImpl> get copyWith =>
      __$$TaskSubmitStateImplCopyWithImpl<_$TaskSubmitStateImpl>(
          this, _$identity);
}

abstract class _TaskSubmitState implements TaskSubmitState {
  const factory _TaskSubmitState(
      {required final String taskName,
      required final String taskDescription,
      required final int empId,
      required final bool isSubmitting,
      required final Either<ApiFailure, String>?
          ansSubmitFailureOrSuccess}) = _$TaskSubmitStateImpl;

  @override
  String get taskName;
  @override
  String get taskDescription;
  @override
  int get empId;
  @override
  bool get isSubmitting;
  @override
  Either<ApiFailure, String>? get ansSubmitFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$TaskSubmitStateImplCopyWith<_$TaskSubmitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
