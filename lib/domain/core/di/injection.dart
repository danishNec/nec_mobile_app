import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../../../presentation/routes/app_routes.dart';
import 'injection.config.dart';

/// A global instance of `GetIt` used for dependency injection.
final getIt = GetIt.instance;

/// Configures dependency injection for the application.
///
/// This function initializes the `GetIt` instance with the provided environment
/// and registers necessary dependencies, including the `AppRouter`.
///
/// - `env`: The environment name used for configuration (e.g., "prod", "dev").
@InjectableInit(
  initializerName:
      r'$initGetIt', // Specifies the name of the generated initializer function.
  preferRelativeImports:
      true, // Indicates whether relative imports should be preferred.
  asExtension:
      false, // Specifies whether the initializer should be generated as an extension.
)
Future<void> configureInjection(String env) async {
  // Initializes the `GetIt` instance with the specified environment.
  $initGetIt(getIt, environment: env);

  // Creates an instance of `AppRouter` for managing application routes.
  final autoRouter = AppRouter();

  // Registers the `AppRouter` instance as a singleton in the `GetIt` container.
  getIt.registerSingleton<AppRouter>(autoRouter);
}
