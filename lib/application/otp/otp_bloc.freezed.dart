// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent()';
}


}

/// @nodoc
class $OtpEventCopyWith<$Res>  {
$OtpEventCopyWith(OtpEvent _, $Res Function(OtpEvent) __);
}


/// Adds pattern-matching-related methods to [OtpEvent].
extension OtpEventPatterns on OtpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _ResendOtp value)?  resendOtp,TResult Function( _OtpChanged value)?  otpChanged,TResult Function( _OtpSubmitted value)?  otpSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ResendOtp() when resendOtp != null:
return resendOtp(_that);case _OtpChanged() when otpChanged != null:
return otpChanged(_that);case _OtpSubmitted() when otpSubmitted != null:
return otpSubmitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _ResendOtp value)  resendOtp,required TResult Function( _OtpChanged value)  otpChanged,required TResult Function( _OtpSubmitted value)  otpSubmitted,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _ResendOtp():
return resendOtp(_that);case _OtpChanged():
return otpChanged(_that);case _OtpSubmitted():
return otpSubmitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _ResendOtp value)?  resendOtp,TResult? Function( _OtpChanged value)?  otpChanged,TResult? Function( _OtpSubmitted value)?  otpSubmitted,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ResendOtp() when resendOtp != null:
return resendOtp(_that);case _OtpChanged() when otpChanged != null:
return otpChanged(_that);case _OtpSubmitted() when otpSubmitted != null:
return otpSubmitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String idType,  String idNumber,  String mobileNumber)?  initial,TResult Function()?  resendOtp,TResult Function( String otpStr)?  otpChanged,TResult Function()?  otpSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.idType,_that.idNumber,_that.mobileNumber);case _ResendOtp() when resendOtp != null:
return resendOtp();case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otpStr);case _OtpSubmitted() when otpSubmitted != null:
return otpSubmitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String idType,  String idNumber,  String mobileNumber)  initial,required TResult Function()  resendOtp,required TResult Function( String otpStr)  otpChanged,required TResult Function()  otpSubmitted,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.idType,_that.idNumber,_that.mobileNumber);case _ResendOtp():
return resendOtp();case _OtpChanged():
return otpChanged(_that.otpStr);case _OtpSubmitted():
return otpSubmitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String idType,  String idNumber,  String mobileNumber)?  initial,TResult? Function()?  resendOtp,TResult? Function( String otpStr)?  otpChanged,TResult? Function()?  otpSubmitted,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.idType,_that.idNumber,_that.mobileNumber);case _ResendOtp() when resendOtp != null:
return resendOtp();case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otpStr);case _OtpSubmitted() when otpSubmitted != null:
return otpSubmitted();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OtpEvent {
  const _Initial({required this.idType, required this.idNumber, required this.mobileNumber});
  

 final  String idType;
 final  String idNumber;
 final  String mobileNumber;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.idType, idType) || other.idType == idType)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,idType,idNumber,mobileNumber);

@override
String toString() {
  return 'OtpEvent.initial(idType: $idType, idNumber: $idNumber, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 String idType, String idNumber, String mobileNumber
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idType = null,Object? idNumber = null,Object? mobileNumber = null,}) {
  return _then(_Initial(
idType: null == idType ? _self.idType : idType // ignore: cast_nullable_to_non_nullable
as String,idNumber: null == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResendOtp implements OtpEvent {
  const _ResendOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.resendOtp()';
}


}




/// @nodoc


class _OtpChanged implements OtpEvent {
  const _OtpChanged(this.otpStr);
  

 final  String otpStr;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpChangedCopyWith<_OtpChanged> get copyWith => __$OtpChangedCopyWithImpl<_OtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpChanged&&(identical(other.otpStr, otpStr) || other.otpStr == otpStr));
}


@override
int get hashCode => Object.hash(runtimeType,otpStr);

@override
String toString() {
  return 'OtpEvent.otpChanged(otpStr: $otpStr)';
}


}

/// @nodoc
abstract mixin class _$OtpChangedCopyWith<$Res> implements $OtpEventCopyWith<$Res> {
  factory _$OtpChangedCopyWith(_OtpChanged value, $Res Function(_OtpChanged) _then) = __$OtpChangedCopyWithImpl;
@useResult
$Res call({
 String otpStr
});




}
/// @nodoc
class __$OtpChangedCopyWithImpl<$Res>
    implements _$OtpChangedCopyWith<$Res> {
  __$OtpChangedCopyWithImpl(this._self, this._then);

  final _OtpChanged _self;
  final $Res Function(_OtpChanged) _then;

/// Create a copy of OtpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otpStr = null,}) {
  return _then(_OtpChanged(
null == otpStr ? _self.otpStr : otpStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OtpSubmitted implements OtpEvent {
  const _OtpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OtpEvent.otpSubmitted()';
}


}




/// @nodoc
mixin _$OtpState {

 bool get isLoading; bool get showErrorMessages; bool get isSubmitting; String get identityType; String get identityNumber; String get mobileNumber; Otp get otp; Option<Either<OtpFailure, Unit>> get resendOtpFailureOrSuccessOption; Option<Either<OtpFailure, OtpDto>> get otpFailureOrSuccessOption;
/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpStateCopyWith<OtpState> get copyWith => _$OtpStateCopyWithImpl<OtpState>(this as OtpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.identityType, identityType) || other.identityType == identityType)&&(identical(other.identityNumber, identityNumber) || other.identityNumber == identityNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.resendOtpFailureOrSuccessOption, resendOtpFailureOrSuccessOption) || other.resendOtpFailureOrSuccessOption == resendOtpFailureOrSuccessOption)&&(identical(other.otpFailureOrSuccessOption, otpFailureOrSuccessOption) || other.otpFailureOrSuccessOption == otpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showErrorMessages,isSubmitting,identityType,identityNumber,mobileNumber,otp,resendOtpFailureOrSuccessOption,otpFailureOrSuccessOption);

@override
String toString() {
  return 'OtpState(isLoading: $isLoading, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, identityType: $identityType, identityNumber: $identityNumber, mobileNumber: $mobileNumber, otp: $otp, resendOtpFailureOrSuccessOption: $resendOtpFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $OtpStateCopyWith<$Res>  {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) _then) = _$OtpStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool showErrorMessages, bool isSubmitting, String identityType, String identityNumber, String mobileNumber, Otp otp, Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption, Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption
});




}
/// @nodoc
class _$OtpStateCopyWithImpl<$Res>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._self, this._then);

  final OtpState _self;
  final $Res Function(OtpState) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? identityType = null,Object? identityNumber = null,Object? mobileNumber = null,Object? otp = null,Object? resendOtpFailureOrSuccessOption = null,Object? otpFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,identityType: null == identityType ? _self.identityType : identityType // ignore: cast_nullable_to_non_nullable
as String,identityNumber: null == identityNumber ? _self.identityNumber : identityNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as Otp,resendOtpFailureOrSuccessOption: null == resendOtpFailureOrSuccessOption ? _self.resendOtpFailureOrSuccessOption : resendOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<OtpFailure, Unit>>,otpFailureOrSuccessOption: null == otpFailureOrSuccessOption ? _self.otpFailureOrSuccessOption : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<OtpFailure, OtpDto>>,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpState].
extension OtpStatePatterns on OtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpState value)  $default,){
final _that = this;
switch (_that) {
case _OtpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpState value)?  $default,){
final _that = this;
switch (_that) {
case _OtpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool showErrorMessages,  bool isSubmitting,  String identityType,  String identityNumber,  String mobileNumber,  Otp otp,  Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption,  Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpState() when $default != null:
return $default(_that.isLoading,_that.showErrorMessages,_that.isSubmitting,_that.identityType,_that.identityNumber,_that.mobileNumber,_that.otp,_that.resendOtpFailureOrSuccessOption,_that.otpFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool showErrorMessages,  bool isSubmitting,  String identityType,  String identityNumber,  String mobileNumber,  Otp otp,  Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption,  Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _OtpState():
return $default(_that.isLoading,_that.showErrorMessages,_that.isSubmitting,_that.identityType,_that.identityNumber,_that.mobileNumber,_that.otp,_that.resendOtpFailureOrSuccessOption,_that.otpFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool showErrorMessages,  bool isSubmitting,  String identityType,  String identityNumber,  String mobileNumber,  Otp otp,  Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption,  Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _OtpState() when $default != null:
return $default(_that.isLoading,_that.showErrorMessages,_that.isSubmitting,_that.identityType,_that.identityNumber,_that.mobileNumber,_that.otp,_that.resendOtpFailureOrSuccessOption,_that.otpFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _OtpState implements OtpState {
  const _OtpState({required this.isLoading, required this.showErrorMessages, required this.isSubmitting, required this.identityType, required this.identityNumber, required this.mobileNumber, required this.otp, required this.resendOtpFailureOrSuccessOption, required this.otpFailureOrSuccessOption});
  

@override final  bool isLoading;
@override final  bool showErrorMessages;
@override final  bool isSubmitting;
@override final  String identityType;
@override final  String identityNumber;
@override final  String mobileNumber;
@override final  Otp otp;
@override final  Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption;
@override final  Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpStateCopyWith<_OtpState> get copyWith => __$OtpStateCopyWithImpl<_OtpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.identityType, identityType) || other.identityType == identityType)&&(identical(other.identityNumber, identityNumber) || other.identityNumber == identityNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.resendOtpFailureOrSuccessOption, resendOtpFailureOrSuccessOption) || other.resendOtpFailureOrSuccessOption == resendOtpFailureOrSuccessOption)&&(identical(other.otpFailureOrSuccessOption, otpFailureOrSuccessOption) || other.otpFailureOrSuccessOption == otpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showErrorMessages,isSubmitting,identityType,identityNumber,mobileNumber,otp,resendOtpFailureOrSuccessOption,otpFailureOrSuccessOption);

@override
String toString() {
  return 'OtpState(isLoading: $isLoading, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, identityType: $identityType, identityNumber: $identityNumber, mobileNumber: $mobileNumber, otp: $otp, resendOtpFailureOrSuccessOption: $resendOtpFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$OtpStateCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory _$OtpStateCopyWith(_OtpState value, $Res Function(_OtpState) _then) = __$OtpStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool showErrorMessages, bool isSubmitting, String identityType, String identityNumber, String mobileNumber, Otp otp, Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption, Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption
});




}
/// @nodoc
class __$OtpStateCopyWithImpl<$Res>
    implements _$OtpStateCopyWith<$Res> {
  __$OtpStateCopyWithImpl(this._self, this._then);

  final _OtpState _self;
  final $Res Function(_OtpState) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? identityType = null,Object? identityNumber = null,Object? mobileNumber = null,Object? otp = null,Object? resendOtpFailureOrSuccessOption = null,Object? otpFailureOrSuccessOption = null,}) {
  return _then(_OtpState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,identityType: null == identityType ? _self.identityType : identityType // ignore: cast_nullable_to_non_nullable
as String,identityNumber: null == identityNumber ? _self.identityNumber : identityNumber // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as Otp,resendOtpFailureOrSuccessOption: null == resendOtpFailureOrSuccessOption ? _self.resendOtpFailureOrSuccessOption : resendOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<OtpFailure, Unit>>,otpFailureOrSuccessOption: null == otpFailureOrSuccessOption ? _self.otpFailureOrSuccessOption : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<OtpFailure, OtpDto>>,
  ));
}


}

// dart format on
