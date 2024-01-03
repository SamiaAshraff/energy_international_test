// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injectable_modules.dart' as _i7;
import 'logic/bloc/task_details/bloc/task_details_bloc.dart' as _i5;
import 'logic/bloc/task_submit/bloc/task_submit_bloc.dart' as _i6;
import 'logic/core/api_client.dart' as _i3;
import 'logic/data/task_repo.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.ApiClient>(() => injectableModule.apiClient);
  gh.lazySingleton<_i4.TasksRepo>(() => _i4.TasksRepoImpl());
  gh.factory<_i5.TaskDetailsBloc>(
      () => _i5.TaskDetailsBloc(get<_i4.TasksRepo>()));
  gh.factory<_i6.TaskSubmitBloc>(
      () => _i6.TaskSubmitBloc(get<_i4.TasksRepo>()));
  return get;
}

class _$InjectableModule extends _i7.InjectableModule {}
