import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.serverError() = _ServerError;
  const factory ApiFailure.noInternet() = _NoInternet;
  const factory ApiFailure.unexpected() = _Unexpected;
  const factory ApiFailure.insufficientPermission() = _InsufficientPermission;
  const factory ApiFailure.unableToUpdate() = _UnableToUpdate;
  const factory ApiFailure.notLoggedIn() = _NotLoggedIn;
}
