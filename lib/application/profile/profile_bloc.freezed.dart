// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUserInfo value)?  getUserInfo,TResult Function( _CurrentEmailAddressChanged value)?  currentEmailAddressChanged,TResult Function( _UpdateEmailAddressChanged value)?  updateEmailAddressChanged,TResult Function( _RequestUpdateEmailAddressPressed value)?  requestUpdateEmailAddressPressed,TResult Function( _EmailOtpChanged value)?  emailOtpChanged,TResult Function( _ContinueOtpButtonPressed value)?  continueOtpButtonPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that);case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed(_that);case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUserInfo value)  getUserInfo,required TResult Function( _CurrentEmailAddressChanged value)  currentEmailAddressChanged,required TResult Function( _UpdateEmailAddressChanged value)  updateEmailAddressChanged,required TResult Function( _RequestUpdateEmailAddressPressed value)  requestUpdateEmailAddressPressed,required TResult Function( _EmailOtpChanged value)  emailOtpChanged,required TResult Function( _ContinueOtpButtonPressed value)  continueOtpButtonPressed,}){
final _that = this;
switch (_that) {
case _GetUserInfo():
return getUserInfo(_that);case _CurrentEmailAddressChanged():
return currentEmailAddressChanged(_that);case _UpdateEmailAddressChanged():
return updateEmailAddressChanged(_that);case _RequestUpdateEmailAddressPressed():
return requestUpdateEmailAddressPressed(_that);case _EmailOtpChanged():
return emailOtpChanged(_that);case _ContinueOtpButtonPressed():
return continueOtpButtonPressed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUserInfo value)?  getUserInfo,TResult? Function( _CurrentEmailAddressChanged value)?  currentEmailAddressChanged,TResult? Function( _UpdateEmailAddressChanged value)?  updateEmailAddressChanged,TResult? Function( _RequestUpdateEmailAddressPressed value)?  requestUpdateEmailAddressPressed,TResult? Function( _EmailOtpChanged value)?  emailOtpChanged,TResult? Function( _ContinueOtpButtonPressed value)?  continueOtpButtonPressed,}){
final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that);case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed(_that);case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getUserInfo,TResult Function( String emailAddress)?  currentEmailAddressChanged,TResult Function( String emailAddress)?  updateEmailAddressChanged,TResult Function()?  requestUpdateEmailAddressPressed,TResult Function( String emailOtp)?  emailOtpChanged,TResult Function()?  continueOtpButtonPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo();case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that.emailAddress);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that.emailAddress);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed();case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that.emailOtp);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getUserInfo,required TResult Function( String emailAddress)  currentEmailAddressChanged,required TResult Function( String emailAddress)  updateEmailAddressChanged,required TResult Function()  requestUpdateEmailAddressPressed,required TResult Function( String emailOtp)  emailOtpChanged,required TResult Function()  continueOtpButtonPressed,}) {final _that = this;
switch (_that) {
case _GetUserInfo():
return getUserInfo();case _CurrentEmailAddressChanged():
return currentEmailAddressChanged(_that.emailAddress);case _UpdateEmailAddressChanged():
return updateEmailAddressChanged(_that.emailAddress);case _RequestUpdateEmailAddressPressed():
return requestUpdateEmailAddressPressed();case _EmailOtpChanged():
return emailOtpChanged(_that.emailOtp);case _ContinueOtpButtonPressed():
return continueOtpButtonPressed();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getUserInfo,TResult? Function( String emailAddress)?  currentEmailAddressChanged,TResult? Function( String emailAddress)?  updateEmailAddressChanged,TResult? Function()?  requestUpdateEmailAddressPressed,TResult? Function( String emailOtp)?  emailOtpChanged,TResult? Function()?  continueOtpButtonPressed,}) {final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo();case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that.emailAddress);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that.emailAddress);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed();case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that.emailOtp);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed();case _:
  return null;

}
}

}

/// @nodoc


class _GetUserInfo implements ProfileEvent {
  const _GetUserInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.getUserInfo()';
}


}




/// @nodoc


class _CurrentEmailAddressChanged implements ProfileEvent {
  const _CurrentEmailAddressChanged({required this.emailAddress});
  

 final  String emailAddress;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentEmailAddressChangedCopyWith<_CurrentEmailAddressChanged> get copyWith => __$CurrentEmailAddressChangedCopyWithImpl<_CurrentEmailAddressChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentEmailAddressChanged&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress));
}


@override
int get hashCode => Object.hash(runtimeType,emailAddress);

@override
String toString() {
  return 'ProfileEvent.currentEmailAddressChanged(emailAddress: $emailAddress)';
}


}

/// @nodoc
abstract mixin class _$CurrentEmailAddressChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$CurrentEmailAddressChangedCopyWith(_CurrentEmailAddressChanged value, $Res Function(_CurrentEmailAddressChanged) _then) = __$CurrentEmailAddressChangedCopyWithImpl;
@useResult
$Res call({
 String emailAddress
});




}
/// @nodoc
class __$CurrentEmailAddressChangedCopyWithImpl<$Res>
    implements _$CurrentEmailAddressChangedCopyWith<$Res> {
  __$CurrentEmailAddressChangedCopyWithImpl(this._self, this._then);

  final _CurrentEmailAddressChanged _self;
  final $Res Function(_CurrentEmailAddressChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailAddress = null,}) {
  return _then(_CurrentEmailAddressChanged(
emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateEmailAddressChanged implements ProfileEvent {
  const _UpdateEmailAddressChanged({required this.emailAddress});
  

 final  String emailAddress;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEmailAddressChangedCopyWith<_UpdateEmailAddressChanged> get copyWith => __$UpdateEmailAddressChangedCopyWithImpl<_UpdateEmailAddressChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEmailAddressChanged&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress));
}


@override
int get hashCode => Object.hash(runtimeType,emailAddress);

@override
String toString() {
  return 'ProfileEvent.updateEmailAddressChanged(emailAddress: $emailAddress)';
}


}

/// @nodoc
abstract mixin class _$UpdateEmailAddressChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateEmailAddressChangedCopyWith(_UpdateEmailAddressChanged value, $Res Function(_UpdateEmailAddressChanged) _then) = __$UpdateEmailAddressChangedCopyWithImpl;
@useResult
$Res call({
 String emailAddress
});




}
/// @nodoc
class __$UpdateEmailAddressChangedCopyWithImpl<$Res>
    implements _$UpdateEmailAddressChangedCopyWith<$Res> {
  __$UpdateEmailAddressChangedCopyWithImpl(this._self, this._then);

  final _UpdateEmailAddressChanged _self;
  final $Res Function(_UpdateEmailAddressChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailAddress = null,}) {
  return _then(_UpdateEmailAddressChanged(
emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequestUpdateEmailAddressPressed implements ProfileEvent {
  const _RequestUpdateEmailAddressPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestUpdateEmailAddressPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.requestUpdateEmailAddressPressed()';
}


}




/// @nodoc


class _EmailOtpChanged implements ProfileEvent {
  const _EmailOtpChanged({required this.emailOtp});
  

 final  String emailOtp;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailOtpChangedCopyWith<_EmailOtpChanged> get copyWith => __$EmailOtpChangedCopyWithImpl<_EmailOtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailOtpChanged&&(identical(other.emailOtp, emailOtp) || other.emailOtp == emailOtp));
}


@override
int get hashCode => Object.hash(runtimeType,emailOtp);

@override
String toString() {
  return 'ProfileEvent.emailOtpChanged(emailOtp: $emailOtp)';
}


}

/// @nodoc
abstract mixin class _$EmailOtpChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EmailOtpChangedCopyWith(_EmailOtpChanged value, $Res Function(_EmailOtpChanged) _then) = __$EmailOtpChangedCopyWithImpl;
@useResult
$Res call({
 String emailOtp
});




}
/// @nodoc
class __$EmailOtpChangedCopyWithImpl<$Res>
    implements _$EmailOtpChangedCopyWith<$Res> {
  __$EmailOtpChangedCopyWithImpl(this._self, this._then);

  final _EmailOtpChanged _self;
  final $Res Function(_EmailOtpChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailOtp = null,}) {
  return _then(_EmailOtpChanged(
emailOtp: null == emailOtp ? _self.emailOtp : emailOtp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ContinueOtpButtonPressed implements ProfileEvent {
  const _ContinueOtpButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContinueOtpButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.continueOtpButtonPressed()';
}


}




/// @nodoc
mixin _$ProfileState {

 bool get isLoading; bool get isSubmitting; bool get isOtpSubmitting; bool get showErrorMessages; bool get showOtpErrorMessages; ProfileUserDto? get profileUserInfo; String get currentEmailAddress; EmailAddress get emailAddress; Otp get emailOtp; Option<Either<ProfileFailure, ProfileUserDto>> get profileUserInfoFailureOrSuccessOption; Option<Either<ProfileFailure, Unit>> get requestEmailOtpFailureOrSuccessOption; Option<Either<ProfileFailure, Unit>> get verifyEmailOtpFailureOrSuccessOption;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.profileUserInfo, profileUserInfo) || other.profileUserInfo == profileUserInfo)&&(identical(other.currentEmailAddress, currentEmailAddress) || other.currentEmailAddress == currentEmailAddress)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.emailOtp, emailOtp) || other.emailOtp == emailOtp)&&(identical(other.profileUserInfoFailureOrSuccessOption, profileUserInfoFailureOrSuccessOption) || other.profileUserInfoFailureOrSuccessOption == profileUserInfoFailureOrSuccessOption)&&(identical(other.requestEmailOtpFailureOrSuccessOption, requestEmailOtpFailureOrSuccessOption) || other.requestEmailOtpFailureOrSuccessOption == requestEmailOtpFailureOrSuccessOption)&&(identical(other.verifyEmailOtpFailureOrSuccessOption, verifyEmailOtpFailureOrSuccessOption) || other.verifyEmailOtpFailureOrSuccessOption == verifyEmailOtpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,isOtpSubmitting,showErrorMessages,showOtpErrorMessages,profileUserInfo,currentEmailAddress,emailAddress,emailOtp,profileUserInfoFailureOrSuccessOption,requestEmailOtpFailureOrSuccessOption,verifyEmailOtpFailureOrSuccessOption);

@override
String toString() {
  return 'ProfileState(isLoading: $isLoading, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, showErrorMessages: $showErrorMessages, showOtpErrorMessages: $showOtpErrorMessages, profileUserInfo: $profileUserInfo, currentEmailAddress: $currentEmailAddress, emailAddress: $emailAddress, emailOtp: $emailOtp, profileUserInfoFailureOrSuccessOption: $profileUserInfoFailureOrSuccessOption, requestEmailOtpFailureOrSuccessOption: $requestEmailOtpFailureOrSuccessOption, verifyEmailOtpFailureOrSuccessOption: $verifyEmailOtpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, bool isOtpSubmitting, bool showErrorMessages, bool showOtpErrorMessages, ProfileUserDto? profileUserInfo, String currentEmailAddress, EmailAddress emailAddress, Otp emailOtp, Option<Either<ProfileFailure, ProfileUserDto>> profileUserInfoFailureOrSuccessOption, Option<Either<ProfileFailure, Unit>> requestEmailOtpFailureOrSuccessOption, Option<Either<ProfileFailure, Unit>> verifyEmailOtpFailureOrSuccessOption
});


$ProfileUserDtoCopyWith<$Res>? get profileUserInfo;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? showErrorMessages = null,Object? showOtpErrorMessages = null,Object? profileUserInfo = freezed,Object? currentEmailAddress = null,Object? emailAddress = null,Object? emailOtp = null,Object? profileUserInfoFailureOrSuccessOption = null,Object? requestEmailOtpFailureOrSuccessOption = null,Object? verifyEmailOtpFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,profileUserInfo: freezed == profileUserInfo ? _self.profileUserInfo : profileUserInfo // ignore: cast_nullable_to_non_nullable
as ProfileUserDto?,currentEmailAddress: null == currentEmailAddress ? _self.currentEmailAddress : currentEmailAddress // ignore: cast_nullable_to_non_nullable
as String,emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as EmailAddress,emailOtp: null == emailOtp ? _self.emailOtp : emailOtp // ignore: cast_nullable_to_non_nullable
as Otp,profileUserInfoFailureOrSuccessOption: null == profileUserInfoFailureOrSuccessOption ? _self.profileUserInfoFailureOrSuccessOption : profileUserInfoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ProfileFailure, ProfileUserDto>>,requestEmailOtpFailureOrSuccessOption: null == requestEmailOtpFailureOrSuccessOption ? _self.requestEmailOtpFailureOrSuccessOption : requestEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ProfileFailure, Unit>>,verifyEmailOtpFailureOrSuccessOption: null == verifyEmailOtpFailureOrSuccessOption ? _self.verifyEmailOtpFailureOrSuccessOption : verifyEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ProfileFailure, Unit>>,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileUserDtoCopyWith<$Res>? get profileUserInfo {
    if (_self.profileUserInfo == null) {
    return null;
  }

  return $ProfileUserDtoCopyWith<$Res>(_self.profileUserInfo!, (value) {
    return _then(_self.copyWith(profileUserInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  ProfileUserDto? profileUserInfo,  String currentEmailAddress,  EmailAddress emailAddress,  Otp emailOtp,  Option<Either<ProfileFailure, ProfileUserDto>> profileUserInfoFailureOrSuccessOption,  Option<Either<ProfileFailure, Unit>> requestEmailOtpFailureOrSuccessOption,  Option<Either<ProfileFailure, Unit>> verifyEmailOtpFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.profileUserInfo,_that.currentEmailAddress,_that.emailAddress,_that.emailOtp,_that.profileUserInfoFailureOrSuccessOption,_that.requestEmailOtpFailureOrSuccessOption,_that.verifyEmailOtpFailureOrSuccessOption);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  ProfileUserDto? profileUserInfo,  String currentEmailAddress,  EmailAddress emailAddress,  Otp emailOtp,  Option<Either<ProfileFailure, ProfileUserDto>> profileUserInfoFailureOrSuccessOption,  Option<Either<ProfileFailure, Unit>> requestEmailOtpFailureOrSuccessOption,  Option<Either<ProfileFailure, Unit>> verifyEmailOtpFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.isLoading,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.profileUserInfo,_that.currentEmailAddress,_that.emailAddress,_that.emailOtp,_that.profileUserInfoFailureOrSuccessOption,_that.requestEmailOtpFailureOrSuccessOption,_that.verifyEmailOtpFailureOrSuccessOption);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  ProfileUserDto? profileUserInfo,  String currentEmailAddress,  EmailAddress emailAddress,  Otp emailOtp,  Option<Either<ProfileFailure, ProfileUserDto>> profileUserInfoFailureOrSuccessOption,  Option<Either<ProfileFailure, Unit>> requestEmailOtpFailureOrSuccessOption,  Option<Either<ProfileFailure, Unit>> verifyEmailOtpFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.profileUserInfo,_that.currentEmailAddress,_that.emailAddress,_that.emailOtp,_that.profileUserInfoFailureOrSuccessOption,_that.requestEmailOtpFailureOrSuccessOption,_that.verifyEmailOtpFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({required this.isLoading, required this.isSubmitting, required this.isOtpSubmitting, required this.showErrorMessages, required this.showOtpErrorMessages, this.profileUserInfo, required this.currentEmailAddress, required this.emailAddress, required this.emailOtp, required this.profileUserInfoFailureOrSuccessOption, required this.requestEmailOtpFailureOrSuccessOption, required this.verifyEmailOtpFailureOrSuccessOption});
  

@override final  bool isLoading;
@override final  bool isSubmitting;
@override final  bool isOtpSubmitting;
@override final  bool showErrorMessages;
@override final  bool showOtpErrorMessages;
@override final  ProfileUserDto? profileUserInfo;
@override final  String currentEmailAddress;
@override final  EmailAddress emailAddress;
@override final  Otp emailOtp;
@override final  Option<Either<ProfileFailure, ProfileUserDto>> profileUserInfoFailureOrSuccessOption;
@override final  Option<Either<ProfileFailure, Unit>> requestEmailOtpFailureOrSuccessOption;
@override final  Option<Either<ProfileFailure, Unit>> verifyEmailOtpFailureOrSuccessOption;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.profileUserInfo, profileUserInfo) || other.profileUserInfo == profileUserInfo)&&(identical(other.currentEmailAddress, currentEmailAddress) || other.currentEmailAddress == currentEmailAddress)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.emailOtp, emailOtp) || other.emailOtp == emailOtp)&&(identical(other.profileUserInfoFailureOrSuccessOption, profileUserInfoFailureOrSuccessOption) || other.profileUserInfoFailureOrSuccessOption == profileUserInfoFailureOrSuccessOption)&&(identical(other.requestEmailOtpFailureOrSuccessOption, requestEmailOtpFailureOrSuccessOption) || other.requestEmailOtpFailureOrSuccessOption == requestEmailOtpFailureOrSuccessOption)&&(identical(other.verifyEmailOtpFailureOrSuccessOption, verifyEmailOtpFailureOrSuccessOption) || other.verifyEmailOtpFailureOrSuccessOption == verifyEmailOtpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,isOtpSubmitting,showErrorMessages,showOtpErrorMessages,profileUserInfo,currentEmailAddress,emailAddress,emailOtp,profileUserInfoFailureOrSuccessOption,requestEmailOtpFailureOrSuccessOption,verifyEmailOtpFailureOrSuccessOption);

@override
String toString() {
  return 'ProfileState(isLoading: $isLoading, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, showErrorMessages: $showErrorMessages, showOtpErrorMessages: $showOtpErrorMessages, profileUserInfo: $profileUserInfo, currentEmailAddress: $currentEmailAddress, emailAddress: $emailAddress, emailOtp: $emailOtp, profileUserInfoFailureOrSuccessOption: $profileUserInfoFailureOrSuccessOption, requestEmailOtpFailureOrSuccessOption: $requestEmailOtpFailureOrSuccessOption, verifyEmailOtpFailureOrSuccessOption: $verifyEmailOtpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, bool isOtpSubmitting, bool showErrorMessages, bool showOtpErrorMessages, ProfileUserDto? profileUserInfo, String currentEmailAddress, EmailAddress emailAddress, Otp emailOtp, Option<Either<ProfileFailure, ProfileUserDto>> profileUserInfoFailureOrSuccessOption, Option<Either<ProfileFailure, Unit>> requestEmailOtpFailureOrSuccessOption, Option<Either<ProfileFailure, Unit>> verifyEmailOtpFailureOrSuccessOption
});


@override $ProfileUserDtoCopyWith<$Res>? get profileUserInfo;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? showErrorMessages = null,Object? showOtpErrorMessages = null,Object? profileUserInfo = freezed,Object? currentEmailAddress = null,Object? emailAddress = null,Object? emailOtp = null,Object? profileUserInfoFailureOrSuccessOption = null,Object? requestEmailOtpFailureOrSuccessOption = null,Object? verifyEmailOtpFailureOrSuccessOption = null,}) {
  return _then(_ProfileState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,profileUserInfo: freezed == profileUserInfo ? _self.profileUserInfo : profileUserInfo // ignore: cast_nullable_to_non_nullable
as ProfileUserDto?,currentEmailAddress: null == currentEmailAddress ? _self.currentEmailAddress : currentEmailAddress // ignore: cast_nullable_to_non_nullable
as String,emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as EmailAddress,emailOtp: null == emailOtp ? _self.emailOtp : emailOtp // ignore: cast_nullable_to_non_nullable
as Otp,profileUserInfoFailureOrSuccessOption: null == profileUserInfoFailureOrSuccessOption ? _self.profileUserInfoFailureOrSuccessOption : profileUserInfoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ProfileFailure, ProfileUserDto>>,requestEmailOtpFailureOrSuccessOption: null == requestEmailOtpFailureOrSuccessOption ? _self.requestEmailOtpFailureOrSuccessOption : requestEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ProfileFailure, Unit>>,verifyEmailOtpFailureOrSuccessOption: null == verifyEmailOtpFailureOrSuccessOption ? _self.verifyEmailOtpFailureOrSuccessOption : verifyEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ProfileFailure, Unit>>,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileUserDtoCopyWith<$Res>? get profileUserInfo {
    if (_self.profileUserInfo == null) {
    return null;
  }

  return $ProfileUserDtoCopyWith<$Res>(_self.profileUserInfo!, (value) {
    return _then(_self.copyWith(profileUserInfo: value));
  });
}
}

// dart format on
