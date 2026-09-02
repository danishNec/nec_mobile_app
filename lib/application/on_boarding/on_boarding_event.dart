part of 'on_boarding_bloc.dart';

@freezed
sealed class OnBoardingEvent with _$OnBoardingEvent {
  const factory OnBoardingEvent.loadOnBoarding() = _LoadOnBoarding;
}
