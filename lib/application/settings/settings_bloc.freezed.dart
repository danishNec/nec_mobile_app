// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUserInfo value)?  getUserInfo,TResult Function( _CheckBiometricSupport value)?  checkBiometricSupport,TResult Function( _ToggleBiometricAuth value)?  toggleBiometricAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that);case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport(_that);case _ToggleBiometricAuth() when toggleBiometricAuth != null:
return toggleBiometricAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUserInfo value)  getUserInfo,required TResult Function( _CheckBiometricSupport value)  checkBiometricSupport,required TResult Function( _ToggleBiometricAuth value)  toggleBiometricAuth,}){
final _that = this;
switch (_that) {
case _GetUserInfo():
return getUserInfo(_that);case _CheckBiometricSupport():
return checkBiometricSupport(_that);case _ToggleBiometricAuth():
return toggleBiometricAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUserInfo value)?  getUserInfo,TResult? Function( _CheckBiometricSupport value)?  checkBiometricSupport,TResult? Function( _ToggleBiometricAuth value)?  toggleBiometricAuth,}){
final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that);case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport(_that);case _ToggleBiometricAuth() when toggleBiometricAuth != null:
return toggleBiometricAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getUserInfo,TResult Function()?  checkBiometricSupport,TResult Function()?  toggleBiometricAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo();case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport();case _ToggleBiometricAuth() when toggleBiometricAuth != null:
return toggleBiometricAuth();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getUserInfo,required TResult Function()  checkBiometricSupport,required TResult Function()  toggleBiometricAuth,}) {final _that = this;
switch (_that) {
case _GetUserInfo():
return getUserInfo();case _CheckBiometricSupport():
return checkBiometricSupport();case _ToggleBiometricAuth():
return toggleBiometricAuth();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getUserInfo,TResult? Function()?  checkBiometricSupport,TResult? Function()?  toggleBiometricAuth,}) {final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo();case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport();case _ToggleBiometricAuth() when toggleBiometricAuth != null:
return toggleBiometricAuth();case _:
  return null;

}
}

}

/// @nodoc


class _GetUserInfo implements SettingsEvent {
  const _GetUserInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.getUserInfo()';
}


}




/// @nodoc


class _CheckBiometricSupport implements SettingsEvent {
  const _CheckBiometricSupport();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckBiometricSupport);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.checkBiometricSupport()';
}


}




/// @nodoc


class _ToggleBiometricAuth implements SettingsEvent {
  const _ToggleBiometricAuth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleBiometricAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.toggleBiometricAuth()';
}


}




/// @nodoc
mixin _$SettingsState {

 bool get isUserLoading; bool get isBiometricAvailable; bool get isBiometricEnabled; bool get isAuthenticating; SettingsUserDto? get settingsUserInfo; Option<Either<SettingsFailure, SettingsUserDto>> get userInfoFailureOrSuccessOption;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.isUserLoading, isUserLoading) || other.isUserLoading == isUserLoading)&&(identical(other.isBiometricAvailable, isBiometricAvailable) || other.isBiometricAvailable == isBiometricAvailable)&&(identical(other.isBiometricEnabled, isBiometricEnabled) || other.isBiometricEnabled == isBiometricEnabled)&&(identical(other.isAuthenticating, isAuthenticating) || other.isAuthenticating == isAuthenticating)&&(identical(other.settingsUserInfo, settingsUserInfo) || other.settingsUserInfo == settingsUserInfo)&&(identical(other.userInfoFailureOrSuccessOption, userInfoFailureOrSuccessOption) || other.userInfoFailureOrSuccessOption == userInfoFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isUserLoading,isBiometricAvailable,isBiometricEnabled,isAuthenticating,settingsUserInfo,userInfoFailureOrSuccessOption);

@override
String toString() {
  return 'SettingsState(isUserLoading: $isUserLoading, isBiometricAvailable: $isBiometricAvailable, isBiometricEnabled: $isBiometricEnabled, isAuthenticating: $isAuthenticating, settingsUserInfo: $settingsUserInfo, userInfoFailureOrSuccessOption: $userInfoFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 bool isUserLoading, bool isBiometricAvailable, bool isBiometricEnabled, bool isAuthenticating, SettingsUserDto? settingsUserInfo, Option<Either<SettingsFailure, SettingsUserDto>> userInfoFailureOrSuccessOption
});


$SettingsUserDtoCopyWith<$Res>? get settingsUserInfo;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isUserLoading = null,Object? isBiometricAvailable = null,Object? isBiometricEnabled = null,Object? isAuthenticating = null,Object? settingsUserInfo = freezed,Object? userInfoFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isUserLoading: null == isUserLoading ? _self.isUserLoading : isUserLoading // ignore: cast_nullable_to_non_nullable
as bool,isBiometricAvailable: null == isBiometricAvailable ? _self.isBiometricAvailable : isBiometricAvailable // ignore: cast_nullable_to_non_nullable
as bool,isBiometricEnabled: null == isBiometricEnabled ? _self.isBiometricEnabled : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticating: null == isAuthenticating ? _self.isAuthenticating : isAuthenticating // ignore: cast_nullable_to_non_nullable
as bool,settingsUserInfo: freezed == settingsUserInfo ? _self.settingsUserInfo : settingsUserInfo // ignore: cast_nullable_to_non_nullable
as SettingsUserDto?,userInfoFailureOrSuccessOption: null == userInfoFailureOrSuccessOption ? _self.userInfoFailureOrSuccessOption : userInfoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SettingsFailure, SettingsUserDto>>,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsUserDtoCopyWith<$Res>? get settingsUserInfo {
    if (_self.settingsUserInfo == null) {
    return null;
  }

  return $SettingsUserDtoCopyWith<$Res>(_self.settingsUserInfo!, (value) {
    return _then(_self.copyWith(settingsUserInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isUserLoading,  bool isBiometricAvailable,  bool isBiometricEnabled,  bool isAuthenticating,  SettingsUserDto? settingsUserInfo,  Option<Either<SettingsFailure, SettingsUserDto>> userInfoFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.isUserLoading,_that.isBiometricAvailable,_that.isBiometricEnabled,_that.isAuthenticating,_that.settingsUserInfo,_that.userInfoFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isUserLoading,  bool isBiometricAvailable,  bool isBiometricEnabled,  bool isAuthenticating,  SettingsUserDto? settingsUserInfo,  Option<Either<SettingsFailure, SettingsUserDto>> userInfoFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.isUserLoading,_that.isBiometricAvailable,_that.isBiometricEnabled,_that.isAuthenticating,_that.settingsUserInfo,_that.userInfoFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isUserLoading,  bool isBiometricAvailable,  bool isBiometricEnabled,  bool isAuthenticating,  SettingsUserDto? settingsUserInfo,  Option<Either<SettingsFailure, SettingsUserDto>> userInfoFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.isUserLoading,_that.isBiometricAvailable,_that.isBiometricEnabled,_that.isAuthenticating,_that.settingsUserInfo,_that.userInfoFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({required this.isUserLoading, required this.isBiometricAvailable, required this.isBiometricEnabled, required this.isAuthenticating, this.settingsUserInfo, required this.userInfoFailureOrSuccessOption});
  

@override final  bool isUserLoading;
@override final  bool isBiometricAvailable;
@override final  bool isBiometricEnabled;
@override final  bool isAuthenticating;
@override final  SettingsUserDto? settingsUserInfo;
@override final  Option<Either<SettingsFailure, SettingsUserDto>> userInfoFailureOrSuccessOption;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.isUserLoading, isUserLoading) || other.isUserLoading == isUserLoading)&&(identical(other.isBiometricAvailable, isBiometricAvailable) || other.isBiometricAvailable == isBiometricAvailable)&&(identical(other.isBiometricEnabled, isBiometricEnabled) || other.isBiometricEnabled == isBiometricEnabled)&&(identical(other.isAuthenticating, isAuthenticating) || other.isAuthenticating == isAuthenticating)&&(identical(other.settingsUserInfo, settingsUserInfo) || other.settingsUserInfo == settingsUserInfo)&&(identical(other.userInfoFailureOrSuccessOption, userInfoFailureOrSuccessOption) || other.userInfoFailureOrSuccessOption == userInfoFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isUserLoading,isBiometricAvailable,isBiometricEnabled,isAuthenticating,settingsUserInfo,userInfoFailureOrSuccessOption);

@override
String toString() {
  return 'SettingsState(isUserLoading: $isUserLoading, isBiometricAvailable: $isBiometricAvailable, isBiometricEnabled: $isBiometricEnabled, isAuthenticating: $isAuthenticating, settingsUserInfo: $settingsUserInfo, userInfoFailureOrSuccessOption: $userInfoFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isUserLoading, bool isBiometricAvailable, bool isBiometricEnabled, bool isAuthenticating, SettingsUserDto? settingsUserInfo, Option<Either<SettingsFailure, SettingsUserDto>> userInfoFailureOrSuccessOption
});


@override $SettingsUserDtoCopyWith<$Res>? get settingsUserInfo;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isUserLoading = null,Object? isBiometricAvailable = null,Object? isBiometricEnabled = null,Object? isAuthenticating = null,Object? settingsUserInfo = freezed,Object? userInfoFailureOrSuccessOption = null,}) {
  return _then(_SettingsState(
isUserLoading: null == isUserLoading ? _self.isUserLoading : isUserLoading // ignore: cast_nullable_to_non_nullable
as bool,isBiometricAvailable: null == isBiometricAvailable ? _self.isBiometricAvailable : isBiometricAvailable // ignore: cast_nullable_to_non_nullable
as bool,isBiometricEnabled: null == isBiometricEnabled ? _self.isBiometricEnabled : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticating: null == isAuthenticating ? _self.isAuthenticating : isAuthenticating // ignore: cast_nullable_to_non_nullable
as bool,settingsUserInfo: freezed == settingsUserInfo ? _self.settingsUserInfo : settingsUserInfo // ignore: cast_nullable_to_non_nullable
as SettingsUserDto?,userInfoFailureOrSuccessOption: null == userInfoFailureOrSuccessOption ? _self.userInfoFailureOrSuccessOption : userInfoFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SettingsFailure, SettingsUserDto>>,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsUserDtoCopyWith<$Res>? get settingsUserInfo {
    if (_self.settingsUserInfo == null) {
    return null;
  }

  return $SettingsUserDtoCopyWith<$Res>(_self.settingsUserInfo!, (value) {
    return _then(_self.copyWith(settingsUserInfo: value));
  });
}
}

// dart format on
