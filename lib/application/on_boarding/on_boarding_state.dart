part of 'on_boarding_bloc.dart';

@freezed
sealed class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _Initial;
  const factory OnBoardingState.loadingProgress() = _LoadingProgress;
  const factory OnBoardingState.loadSuccessOnBoarding() = _LoadSuccessOnBoarding;
  const factory OnBoardingState.loadFailure(String message) = _LoadFailure;
}
