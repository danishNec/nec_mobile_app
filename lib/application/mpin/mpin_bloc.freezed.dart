// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mpin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MpinEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MpinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MpinEvent()';
}


}

/// @nodoc
class $MpinEventCopyWith<$Res>  {
$MpinEventCopyWith(MpinEvent _, $Res Function(MpinEvent) __);
}


/// Adds pattern-matching-related methods to [MpinEvent].
extension MpinEventPatterns on MpinEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _VerifyMpinEvent value)?  verifyMpin,TResult Function( _CheckBiometricSupport value)?  checkBiometricSupport,TResult Function( _VerifyBiometricEvent value)?  verifyBiometric,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyMpinEvent() when verifyMpin != null:
return verifyMpin(_that);case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport(_that);case _VerifyBiometricEvent() when verifyBiometric != null:
return verifyBiometric(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _VerifyMpinEvent value)  verifyMpin,required TResult Function( _CheckBiometricSupport value)  checkBiometricSupport,required TResult Function( _VerifyBiometricEvent value)  verifyBiometric,}){
final _that = this;
switch (_that) {
case _VerifyMpinEvent():
return verifyMpin(_that);case _CheckBiometricSupport():
return checkBiometricSupport(_that);case _VerifyBiometricEvent():
return verifyBiometric(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _VerifyMpinEvent value)?  verifyMpin,TResult? Function( _CheckBiometricSupport value)?  checkBiometricSupport,TResult? Function( _VerifyBiometricEvent value)?  verifyBiometric,}){
final _that = this;
switch (_that) {
case _VerifyMpinEvent() when verifyMpin != null:
return verifyMpin(_that);case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport(_that);case _VerifyBiometricEvent() when verifyBiometric != null:
return verifyBiometric(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mpin)?  verifyMpin,TResult Function()?  checkBiometricSupport,TResult Function( String localizedReason)?  verifyBiometric,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyMpinEvent() when verifyMpin != null:
return verifyMpin(_that.mpin);case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport();case _VerifyBiometricEvent() when verifyBiometric != null:
return verifyBiometric(_that.localizedReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mpin)  verifyMpin,required TResult Function()  checkBiometricSupport,required TResult Function( String localizedReason)  verifyBiometric,}) {final _that = this;
switch (_that) {
case _VerifyMpinEvent():
return verifyMpin(_that.mpin);case _CheckBiometricSupport():
return checkBiometricSupport();case _VerifyBiometricEvent():
return verifyBiometric(_that.localizedReason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mpin)?  verifyMpin,TResult? Function()?  checkBiometricSupport,TResult? Function( String localizedReason)?  verifyBiometric,}) {final _that = this;
switch (_that) {
case _VerifyMpinEvent() when verifyMpin != null:
return verifyMpin(_that.mpin);case _CheckBiometricSupport() when checkBiometricSupport != null:
return checkBiometricSupport();case _VerifyBiometricEvent() when verifyBiometric != null:
return verifyBiometric(_that.localizedReason);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyMpinEvent implements MpinEvent {
  const _VerifyMpinEvent({required this.mpin});
  

 final  String mpin;

/// Create a copy of MpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyMpinEventCopyWith<_VerifyMpinEvent> get copyWith => __$VerifyMpinEventCopyWithImpl<_VerifyMpinEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyMpinEvent&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'MpinEvent.verifyMpin(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class _$VerifyMpinEventCopyWith<$Res> implements $MpinEventCopyWith<$Res> {
  factory _$VerifyMpinEventCopyWith(_VerifyMpinEvent value, $Res Function(_VerifyMpinEvent) _then) = __$VerifyMpinEventCopyWithImpl;
@useResult
$Res call({
 String mpin
});




}
/// @nodoc
class __$VerifyMpinEventCopyWithImpl<$Res>
    implements _$VerifyMpinEventCopyWith<$Res> {
  __$VerifyMpinEventCopyWithImpl(this._self, this._then);

  final _VerifyMpinEvent _self;
  final $Res Function(_VerifyMpinEvent) _then;

/// Create a copy of MpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mpin = null,}) {
  return _then(_VerifyMpinEvent(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckBiometricSupport implements MpinEvent {
  const _CheckBiometricSupport();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckBiometricSupport);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MpinEvent.checkBiometricSupport()';
}


}




/// @nodoc


class _VerifyBiometricEvent implements MpinEvent {
  const _VerifyBiometricEvent({this.localizedReason = 'Please authenticate to continue'});
  

@JsonKey() final  String localizedReason;

/// Create a copy of MpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyBiometricEventCopyWith<_VerifyBiometricEvent> get copyWith => __$VerifyBiometricEventCopyWithImpl<_VerifyBiometricEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyBiometricEvent&&(identical(other.localizedReason, localizedReason) || other.localizedReason == localizedReason));
}


@override
int get hashCode => Object.hash(runtimeType,localizedReason);

@override
String toString() {
  return 'MpinEvent.verifyBiometric(localizedReason: $localizedReason)';
}


}

/// @nodoc
abstract mixin class _$VerifyBiometricEventCopyWith<$Res> implements $MpinEventCopyWith<$Res> {
  factory _$VerifyBiometricEventCopyWith(_VerifyBiometricEvent value, $Res Function(_VerifyBiometricEvent) _then) = __$VerifyBiometricEventCopyWithImpl;
@useResult
$Res call({
 String localizedReason
});




}
/// @nodoc
class __$VerifyBiometricEventCopyWithImpl<$Res>
    implements _$VerifyBiometricEventCopyWith<$Res> {
  __$VerifyBiometricEventCopyWithImpl(this._self, this._then);

  final _VerifyBiometricEvent _self;
  final $Res Function(_VerifyBiometricEvent) _then;

/// Create a copy of MpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? localizedReason = null,}) {
  return _then(_VerifyBiometricEvent(
localizedReason: null == localizedReason ? _self.localizedReason : localizedReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MpinState {

 bool get isLoading; bool get isAuthenticating; bool get isBiometricAvailable; bool get isBiometricEnabled; Option<Either<MpinFailure, MpinDto>> get mpinFailureOrSuccessOption; Option<Either<MpinFailure, MpinDto>> get biometricFailureOrSuccessOption;
/// Create a copy of MpinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MpinStateCopyWith<MpinState> get copyWith => _$MpinStateCopyWithImpl<MpinState>(this as MpinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MpinState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAuthenticating, isAuthenticating) || other.isAuthenticating == isAuthenticating)&&(identical(other.isBiometricAvailable, isBiometricAvailable) || other.isBiometricAvailable == isBiometricAvailable)&&(identical(other.isBiometricEnabled, isBiometricEnabled) || other.isBiometricEnabled == isBiometricEnabled)&&(identical(other.mpinFailureOrSuccessOption, mpinFailureOrSuccessOption) || other.mpinFailureOrSuccessOption == mpinFailureOrSuccessOption)&&(identical(other.biometricFailureOrSuccessOption, biometricFailureOrSuccessOption) || other.biometricFailureOrSuccessOption == biometricFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAuthenticating,isBiometricAvailable,isBiometricEnabled,mpinFailureOrSuccessOption,biometricFailureOrSuccessOption);

@override
String toString() {
  return 'MpinState(isLoading: $isLoading, isAuthenticating: $isAuthenticating, isBiometricAvailable: $isBiometricAvailable, isBiometricEnabled: $isBiometricEnabled, mpinFailureOrSuccessOption: $mpinFailureOrSuccessOption, biometricFailureOrSuccessOption: $biometricFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $MpinStateCopyWith<$Res>  {
  factory $MpinStateCopyWith(MpinState value, $Res Function(MpinState) _then) = _$MpinStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isAuthenticating, bool isBiometricAvailable, bool isBiometricEnabled, Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption, Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption
});




}
/// @nodoc
class _$MpinStateCopyWithImpl<$Res>
    implements $MpinStateCopyWith<$Res> {
  _$MpinStateCopyWithImpl(this._self, this._then);

  final MpinState _self;
  final $Res Function(MpinState) _then;

/// Create a copy of MpinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isAuthenticating = null,Object? isBiometricAvailable = null,Object? isBiometricEnabled = null,Object? mpinFailureOrSuccessOption = null,Object? biometricFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticating: null == isAuthenticating ? _self.isAuthenticating : isAuthenticating // ignore: cast_nullable_to_non_nullable
as bool,isBiometricAvailable: null == isBiometricAvailable ? _self.isBiometricAvailable : isBiometricAvailable // ignore: cast_nullable_to_non_nullable
as bool,isBiometricEnabled: null == isBiometricEnabled ? _self.isBiometricEnabled : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,mpinFailureOrSuccessOption: null == mpinFailureOrSuccessOption ? _self.mpinFailureOrSuccessOption : mpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MpinFailure, MpinDto>>,biometricFailureOrSuccessOption: null == biometricFailureOrSuccessOption ? _self.biometricFailureOrSuccessOption : biometricFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MpinFailure, MpinDto>>,
  ));
}

}


/// Adds pattern-matching-related methods to [MpinState].
extension MpinStatePatterns on MpinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MpinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MpinState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MpinState value)  $default,){
final _that = this;
switch (_that) {
case _MpinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MpinState value)?  $default,){
final _that = this;
switch (_that) {
case _MpinState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isAuthenticating,  bool isBiometricAvailable,  bool isBiometricEnabled,  Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption,  Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MpinState() when $default != null:
return $default(_that.isLoading,_that.isAuthenticating,_that.isBiometricAvailable,_that.isBiometricEnabled,_that.mpinFailureOrSuccessOption,_that.biometricFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isAuthenticating,  bool isBiometricAvailable,  bool isBiometricEnabled,  Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption,  Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _MpinState():
return $default(_that.isLoading,_that.isAuthenticating,_that.isBiometricAvailable,_that.isBiometricEnabled,_that.mpinFailureOrSuccessOption,_that.biometricFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isAuthenticating,  bool isBiometricAvailable,  bool isBiometricEnabled,  Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption,  Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _MpinState() when $default != null:
return $default(_that.isLoading,_that.isAuthenticating,_that.isBiometricAvailable,_that.isBiometricEnabled,_that.mpinFailureOrSuccessOption,_that.biometricFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _MpinState implements MpinState {
  const _MpinState({required this.isLoading, required this.isAuthenticating, required this.isBiometricAvailable, required this.isBiometricEnabled, required this.mpinFailureOrSuccessOption, required this.biometricFailureOrSuccessOption});
  

@override final  bool isLoading;
@override final  bool isAuthenticating;
@override final  bool isBiometricAvailable;
@override final  bool isBiometricEnabled;
@override final  Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption;
@override final  Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption;

/// Create a copy of MpinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MpinStateCopyWith<_MpinState> get copyWith => __$MpinStateCopyWithImpl<_MpinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MpinState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAuthenticating, isAuthenticating) || other.isAuthenticating == isAuthenticating)&&(identical(other.isBiometricAvailable, isBiometricAvailable) || other.isBiometricAvailable == isBiometricAvailable)&&(identical(other.isBiometricEnabled, isBiometricEnabled) || other.isBiometricEnabled == isBiometricEnabled)&&(identical(other.mpinFailureOrSuccessOption, mpinFailureOrSuccessOption) || other.mpinFailureOrSuccessOption == mpinFailureOrSuccessOption)&&(identical(other.biometricFailureOrSuccessOption, biometricFailureOrSuccessOption) || other.biometricFailureOrSuccessOption == biometricFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAuthenticating,isBiometricAvailable,isBiometricEnabled,mpinFailureOrSuccessOption,biometricFailureOrSuccessOption);

@override
String toString() {
  return 'MpinState(isLoading: $isLoading, isAuthenticating: $isAuthenticating, isBiometricAvailable: $isBiometricAvailable, isBiometricEnabled: $isBiometricEnabled, mpinFailureOrSuccessOption: $mpinFailureOrSuccessOption, biometricFailureOrSuccessOption: $biometricFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$MpinStateCopyWith<$Res> implements $MpinStateCopyWith<$Res> {
  factory _$MpinStateCopyWith(_MpinState value, $Res Function(_MpinState) _then) = __$MpinStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isAuthenticating, bool isBiometricAvailable, bool isBiometricEnabled, Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption, Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption
});




}
/// @nodoc
class __$MpinStateCopyWithImpl<$Res>
    implements _$MpinStateCopyWith<$Res> {
  __$MpinStateCopyWithImpl(this._self, this._then);

  final _MpinState _self;
  final $Res Function(_MpinState) _then;

/// Create a copy of MpinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isAuthenticating = null,Object? isBiometricAvailable = null,Object? isBiometricEnabled = null,Object? mpinFailureOrSuccessOption = null,Object? biometricFailureOrSuccessOption = null,}) {
  return _then(_MpinState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticating: null == isAuthenticating ? _self.isAuthenticating : isAuthenticating // ignore: cast_nullable_to_non_nullable
as bool,isBiometricAvailable: null == isBiometricAvailable ? _self.isBiometricAvailable : isBiometricAvailable // ignore: cast_nullable_to_non_nullable
as bool,isBiometricEnabled: null == isBiometricEnabled ? _self.isBiometricEnabled : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,mpinFailureOrSuccessOption: null == mpinFailureOrSuccessOption ? _self.mpinFailureOrSuccessOption : mpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MpinFailure, MpinDto>>,biometricFailureOrSuccessOption: null == biometricFailureOrSuccessOption ? _self.biometricFailureOrSuccessOption : biometricFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<MpinFailure, MpinDto>>,
  ));
}


}

// dart format on
