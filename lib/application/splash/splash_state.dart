part of 'splash_bloc.dart';

/// Represents the various states of the `SplashBloc`.
///
/// These states are used to manage the splash screen logic, such as tracking
/// the progress of authentication checks and determining the next screen to navigate to.
@freezed
sealed class SplashState with _$SplashState {
  /// Represents the initial state of the splash screen.
  const factory SplashState.initial() = _Initial;

  /// Represents the state when the authentication check is in progress.
  const factory SplashState.loadingProgress() = _LoadingProgress;

  /// Represents the state when the onboarding screen should be displayed.
  const factory SplashState.loadedSuccessOnBoarding() =
      _LoadedSuccessOnBoarding;

  /// Represents the state when the login screen should be displayed.
  const factory SplashState.loadedSuccessLogin() = _LoadedSuccessLogin;

  /// Represents the state when the MPIN setup screen should be displayed.
  const factory SplashState.loadedSuccessSetMpin() = _LoadedSuccessSetMpin;

  /// Represents the state when the main application screen should be displayed.
  const factory SplashState.loadedSuccessMain() = _LoadedSuccessMain;

  /// Represents the state when an error occurs during the authentication check.
  ///
  /// - `message`: A string describing the error that occurred.
  const factory SplashState.loadedFailure(String message) = _LoadedFailure;
}
