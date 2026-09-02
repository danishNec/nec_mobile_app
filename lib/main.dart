import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'domain/core/di/injection.dart';
import 'presentation/core/app_widget.dart';
import 'presentation/core/global/app_global.dart';

/// The entry point of the application.
///
/// This function initializes necessary dependencies, performs security checks,
/// and runs the Flutter application.
Future<void> main() async {
  // Ensures that the Flutter framework is properly initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initializes the EasyLocalization package for localization support.
  await EasyLocalization.ensureInitialized();

  // Configures dependency injection for the application using the production environment.
  await configureInjection(Environment.prod);

  // Sets the preferred device orientation to portrait mode only.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initializes Firebase with platform-specific options.
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Initializes push notification services.
  // await AppPushNotification.init();

  final locale = await AppGlobal.getInitialLocale();

  runApp(
    EasyLocalization(
      supportedLocales: AppGlobal.supportedLocales,
      path: AppGlobal.translationsPath,
      fallbackLocale: AppGlobal.supportedLocales.first,
      startLocale: locale,
      child: const AppWidget(),
    ),
  );
}
