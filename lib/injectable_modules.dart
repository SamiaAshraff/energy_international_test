import 'package:energy_test/logic/core/api_client.dart';
import 'package:injectable/injectable.dart';


@module
abstract class InjectableModule {
  // @lazySingleton
  // AppRouter get router => AppRouter(authGuard: AuthGuard());
  @lazySingleton
  ApiClient get apiClient => ApiClient();
}
