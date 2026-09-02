part of 'splash_bloc.dart';

/// Represents the events that can be dispatched to the `SplashBloc`.
///
/// These events are used to manage the splash screen logic, such as checking
/// the user's authentication status.
@freezed
sealed class SplashEvent with _$SplashEvent {
  /// Event to check the user's authentication status.
  ///
  /// This event triggers the logic to determine whether the user has onboarded,
  /// logged in, or should be directed to the main application screen.
  const factory SplashEvent.checkAuthentication() = _CheckAuthentication;
}
