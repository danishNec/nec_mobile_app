// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_mpin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotMpinEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotMpinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinEvent()';
}


}

/// @nodoc
class $ForgotMpinEventCopyWith<$Res>  {
$ForgotMpinEventCopyWith(ForgotMpinEvent _, $Res Function(ForgotMpinEvent) __);
}


/// Adds pattern-matching-related methods to [ForgotMpinEvent].
extension ForgotMpinEventPatterns on ForgotMpinEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetIdentityTypes value)?  getIdentityTypes,TResult Function( _IdentityTypeChanged value)?  identityTypeChanged,TResult Function( _IdentityNumberChanged value)?  identityNumberChanged,TResult Function( _MobileNumberChanged value)?  mobileNumberChanged,TResult Function( _RequestOtpPressed value)?  requestOtpPressed,TResult Function( _ResendOtp value)?  resendOtp,TResult Function( _OtpChanged value)?  otpChanged,TResult Function( _OtpSubmitted value)?  otpSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes(_that);case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed(_that);case _ResendOtp() when resendOtp != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetIdentityTypes value)  getIdentityTypes,required TResult Function( _IdentityTypeChanged value)  identityTypeChanged,required TResult Function( _IdentityNumberChanged value)  identityNumberChanged,required TResult Function( _MobileNumberChanged value)  mobileNumberChanged,required TResult Function( _RequestOtpPressed value)  requestOtpPressed,required TResult Function( _ResendOtp value)  resendOtp,required TResult Function( _OtpChanged value)  otpChanged,required TResult Function( _OtpSubmitted value)  otpSubmitted,}){
final _that = this;
switch (_that) {
case _GetIdentityTypes():
return getIdentityTypes(_that);case _IdentityTypeChanged():
return identityTypeChanged(_that);case _IdentityNumberChanged():
return identityNumberChanged(_that);case _MobileNumberChanged():
return mobileNumberChanged(_that);case _RequestOtpPressed():
return requestOtpPressed(_that);case _ResendOtp():
return resendOtp(_that);case _OtpChanged():
return otpChanged(_that);case _OtpSubmitted():
return otpSubmitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetIdentityTypes value)?  getIdentityTypes,TResult? Function( _IdentityTypeChanged value)?  identityTypeChanged,TResult? Function( _IdentityNumberChanged value)?  identityNumberChanged,TResult? Function( _MobileNumberChanged value)?  mobileNumberChanged,TResult? Function( _RequestOtpPressed value)?  requestOtpPressed,TResult? Function( _ResendOtp value)?  resendOtp,TResult? Function( _OtpChanged value)?  otpChanged,TResult? Function( _OtpSubmitted value)?  otpSubmitted,}){
final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes(_that);case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed(_that);case _ResendOtp() when resendOtp != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getIdentityTypes,TResult Function( CommonSelectableItem selectedIdentityType)?  identityTypeChanged,TResult Function( String identityNumberStr)?  identityNumberChanged,TResult Function( String mobileNumberStr)?  mobileNumberChanged,TResult Function()?  requestOtpPressed,TResult Function()?  resendOtp,TResult Function( String otpStr)?  otpChanged,TResult Function()?  otpSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes();case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that.selectedIdentityType);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that.identityNumberStr);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that.mobileNumberStr);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed();case _ResendOtp() when resendOtp != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getIdentityTypes,required TResult Function( CommonSelectableItem selectedIdentityType)  identityTypeChanged,required TResult Function( String identityNumberStr)  identityNumberChanged,required TResult Function( String mobileNumberStr)  mobileNumberChanged,required TResult Function()  requestOtpPressed,required TResult Function()  resendOtp,required TResult Function( String otpStr)  otpChanged,required TResult Function()  otpSubmitted,}) {final _that = this;
switch (_that) {
case _GetIdentityTypes():
return getIdentityTypes();case _IdentityTypeChanged():
return identityTypeChanged(_that.selectedIdentityType);case _IdentityNumberChanged():
return identityNumberChanged(_that.identityNumberStr);case _MobileNumberChanged():
return mobileNumberChanged(_that.mobileNumberStr);case _RequestOtpPressed():
return requestOtpPressed();case _ResendOtp():
return resendOtp();case _OtpChanged():
return otpChanged(_that.otpStr);case _OtpSubmitted():
return otpSubmitted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getIdentityTypes,TResult? Function( CommonSelectableItem selectedIdentityType)?  identityTypeChanged,TResult? Function( String identityNumberStr)?  identityNumberChanged,TResult? Function( String mobileNumberStr)?  mobileNumberChanged,TResult? Function()?  requestOtpPressed,TResult? Function()?  resendOtp,TResult? Function( String otpStr)?  otpChanged,TResult? Function()?  otpSubmitted,}) {final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes();case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that.selectedIdentityType);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that.identityNumberStr);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that.mobileNumberStr);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed();case _ResendOtp() when resendOtp != null:
return resendOtp();case _OtpChanged() when otpChanged != null:
return otpChanged(_that.otpStr);case _OtpSubmitted() when otpSubmitted != null:
return otpSubmitted();case _:
  return null;

}
}

}

/// @nodoc


class _GetIdentityTypes implements ForgotMpinEvent {
  const _GetIdentityTypes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIdentityTypes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinEvent.getIdentityTypes()';
}


}




/// @nodoc


class _IdentityTypeChanged implements ForgotMpinEvent {
  const _IdentityTypeChanged({required this.selectedIdentityType});
  

 final  CommonSelectableItem selectedIdentityType;

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdentityTypeChangedCopyWith<_IdentityTypeChanged> get copyWith => __$IdentityTypeChangedCopyWithImpl<_IdentityTypeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdentityTypeChanged&&(identical(other.selectedIdentityType, selectedIdentityType) || other.selectedIdentityType == selectedIdentityType));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIdentityType);

@override
String toString() {
  return 'ForgotMpinEvent.identityTypeChanged(selectedIdentityType: $selectedIdentityType)';
}


}

/// @nodoc
abstract mixin class _$IdentityTypeChangedCopyWith<$Res> implements $ForgotMpinEventCopyWith<$Res> {
  factory _$IdentityTypeChangedCopyWith(_IdentityTypeChanged value, $Res Function(_IdentityTypeChanged) _then) = __$IdentityTypeChangedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedIdentityType
});


$CommonSelectableItemCopyWith<$Res> get selectedIdentityType;

}
/// @nodoc
class __$IdentityTypeChangedCopyWithImpl<$Res>
    implements _$IdentityTypeChangedCopyWith<$Res> {
  __$IdentityTypeChangedCopyWithImpl(this._self, this._then);

  final _IdentityTypeChanged _self;
  final $Res Function(_IdentityTypeChanged) _then;

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedIdentityType = null,}) {
  return _then(_IdentityTypeChanged(
selectedIdentityType: null == selectedIdentityType ? _self.selectedIdentityType : selectedIdentityType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedIdentityType {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedIdentityType, (value) {
    return _then(_self.copyWith(selectedIdentityType: value));
  });
}
}

/// @nodoc


class _IdentityNumberChanged implements ForgotMpinEvent {
  const _IdentityNumberChanged(this.identityNumberStr);
  

 final  String identityNumberStr;

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdentityNumberChangedCopyWith<_IdentityNumberChanged> get copyWith => __$IdentityNumberChangedCopyWithImpl<_IdentityNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdentityNumberChanged&&(identical(other.identityNumberStr, identityNumberStr) || other.identityNumberStr == identityNumberStr));
}


@override
int get hashCode => Object.hash(runtimeType,identityNumberStr);

@override
String toString() {
  return 'ForgotMpinEvent.identityNumberChanged(identityNumberStr: $identityNumberStr)';
}


}

/// @nodoc
abstract mixin class _$IdentityNumberChangedCopyWith<$Res> implements $ForgotMpinEventCopyWith<$Res> {
  factory _$IdentityNumberChangedCopyWith(_IdentityNumberChanged value, $Res Function(_IdentityNumberChanged) _then) = __$IdentityNumberChangedCopyWithImpl;
@useResult
$Res call({
 String identityNumberStr
});




}
/// @nodoc
class __$IdentityNumberChangedCopyWithImpl<$Res>
    implements _$IdentityNumberChangedCopyWith<$Res> {
  __$IdentityNumberChangedCopyWithImpl(this._self, this._then);

  final _IdentityNumberChanged _self;
  final $Res Function(_IdentityNumberChanged) _then;

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? identityNumberStr = null,}) {
  return _then(_IdentityNumberChanged(
null == identityNumberStr ? _self.identityNumberStr : identityNumberStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MobileNumberChanged implements ForgotMpinEvent {
  const _MobileNumberChanged(this.mobileNumberStr);
  

 final  String mobileNumberStr;

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MobileNumberChangedCopyWith<_MobileNumberChanged> get copyWith => __$MobileNumberChangedCopyWithImpl<_MobileNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MobileNumberChanged&&(identical(other.mobileNumberStr, mobileNumberStr) || other.mobileNumberStr == mobileNumberStr));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumberStr);

@override
String toString() {
  return 'ForgotMpinEvent.mobileNumberChanged(mobileNumberStr: $mobileNumberStr)';
}


}

/// @nodoc
abstract mixin class _$MobileNumberChangedCopyWith<$Res> implements $ForgotMpinEventCopyWith<$Res> {
  factory _$MobileNumberChangedCopyWith(_MobileNumberChanged value, $Res Function(_MobileNumberChanged) _then) = __$MobileNumberChangedCopyWithImpl;
@useResult
$Res call({
 String mobileNumberStr
});




}
/// @nodoc
class __$MobileNumberChangedCopyWithImpl<$Res>
    implements _$MobileNumberChangedCopyWith<$Res> {
  __$MobileNumberChangedCopyWithImpl(this._self, this._then);

  final _MobileNumberChanged _self;
  final $Res Function(_MobileNumberChanged) _then;

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mobileNumberStr = null,}) {
  return _then(_MobileNumberChanged(
null == mobileNumberStr ? _self.mobileNumberStr : mobileNumberStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequestOtpPressed implements ForgotMpinEvent {
  const _RequestOtpPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestOtpPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinEvent.requestOtpPressed()';
}


}




/// @nodoc


class _ResendOtp implements ForgotMpinEvent {
  const _ResendOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinEvent.resendOtp()';
}


}




/// @nodoc


class _OtpChanged implements ForgotMpinEvent {
  const _OtpChanged(this.otpStr);
  

 final  String otpStr;

/// Create a copy of ForgotMpinEvent
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
  return 'ForgotMpinEvent.otpChanged(otpStr: $otpStr)';
}


}

/// @nodoc
abstract mixin class _$OtpChangedCopyWith<$Res> implements $ForgotMpinEventCopyWith<$Res> {
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

/// Create a copy of ForgotMpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otpStr = null,}) {
  return _then(_OtpChanged(
null == otpStr ? _self.otpStr : otpStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OtpSubmitted implements ForgotMpinEvent {
  const _OtpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinEvent.otpSubmitted()';
}


}




/// @nodoc
mixin _$ForgotMpinState {

 bool get isLoading; bool get isOtpLoading; bool get isSubmitting; bool get isOtpSubmitting; bool get showErrorMessages; bool get showOtpErrorMessages; ForgotIdIdentityDto? get forgotIdIdentityDto; CommonSelectableItem? get selectedIdentityType; IdentityNumber get identityNumber; MobileNumber get mobileNumber; Otp get otp; Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> get identityTypeFailureOrSuccessOption; Option<Either<ForgotMpinFailure, Unit>> get requestOtpFailureOrSuccessOption; Option<Either<ForgotMpinFailure, Unit>> get resendOtpFailureOrSuccessOption; Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> get otpFailureOrSuccessOption;
/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotMpinStateCopyWith<ForgotMpinState> get copyWith => _$ForgotMpinStateCopyWithImpl<ForgotMpinState>(this as ForgotMpinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotMpinState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isOtpLoading, isOtpLoading) || other.isOtpLoading == isOtpLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.forgotIdIdentityDto, forgotIdIdentityDto) || other.forgotIdIdentityDto == forgotIdIdentityDto)&&(identical(other.selectedIdentityType, selectedIdentityType) || other.selectedIdentityType == selectedIdentityType)&&(identical(other.identityNumber, identityNumber) || other.identityNumber == identityNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.identityTypeFailureOrSuccessOption, identityTypeFailureOrSuccessOption) || other.identityTypeFailureOrSuccessOption == identityTypeFailureOrSuccessOption)&&(identical(other.requestOtpFailureOrSuccessOption, requestOtpFailureOrSuccessOption) || other.requestOtpFailureOrSuccessOption == requestOtpFailureOrSuccessOption)&&(identical(other.resendOtpFailureOrSuccessOption, resendOtpFailureOrSuccessOption) || other.resendOtpFailureOrSuccessOption == resendOtpFailureOrSuccessOption)&&(identical(other.otpFailureOrSuccessOption, otpFailureOrSuccessOption) || other.otpFailureOrSuccessOption == otpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isOtpLoading,isSubmitting,isOtpSubmitting,showErrorMessages,showOtpErrorMessages,forgotIdIdentityDto,selectedIdentityType,identityNumber,mobileNumber,otp,identityTypeFailureOrSuccessOption,requestOtpFailureOrSuccessOption,resendOtpFailureOrSuccessOption,otpFailureOrSuccessOption);

@override
String toString() {
  return 'ForgotMpinState(isLoading: $isLoading, isOtpLoading: $isOtpLoading, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, showErrorMessages: $showErrorMessages, showOtpErrorMessages: $showOtpErrorMessages, forgotIdIdentityDto: $forgotIdIdentityDto, selectedIdentityType: $selectedIdentityType, identityNumber: $identityNumber, mobileNumber: $mobileNumber, otp: $otp, identityTypeFailureOrSuccessOption: $identityTypeFailureOrSuccessOption, requestOtpFailureOrSuccessOption: $requestOtpFailureOrSuccessOption, resendOtpFailureOrSuccessOption: $resendOtpFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $ForgotMpinStateCopyWith<$Res>  {
  factory $ForgotMpinStateCopyWith(ForgotMpinState value, $Res Function(ForgotMpinState) _then) = _$ForgotMpinStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isOtpLoading, bool isSubmitting, bool isOtpSubmitting, bool showErrorMessages, bool showOtpErrorMessages, ForgotIdIdentityDto? forgotIdIdentityDto, CommonSelectableItem? selectedIdentityType, IdentityNumber identityNumber, MobileNumber mobileNumber, Otp otp, Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> identityTypeFailureOrSuccessOption, Option<Either<ForgotMpinFailure, Unit>> requestOtpFailureOrSuccessOption, Option<Either<ForgotMpinFailure, Unit>> resendOtpFailureOrSuccessOption, Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> otpFailureOrSuccessOption
});


$ForgotIdIdentityDtoCopyWith<$Res>? get forgotIdIdentityDto;$CommonSelectableItemCopyWith<$Res>? get selectedIdentityType;

}
/// @nodoc
class _$ForgotMpinStateCopyWithImpl<$Res>
    implements $ForgotMpinStateCopyWith<$Res> {
  _$ForgotMpinStateCopyWithImpl(this._self, this._then);

  final ForgotMpinState _self;
  final $Res Function(ForgotMpinState) _then;

/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isOtpLoading = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? showErrorMessages = null,Object? showOtpErrorMessages = null,Object? forgotIdIdentityDto = freezed,Object? selectedIdentityType = freezed,Object? identityNumber = null,Object? mobileNumber = null,Object? otp = null,Object? identityTypeFailureOrSuccessOption = null,Object? requestOtpFailureOrSuccessOption = null,Object? resendOtpFailureOrSuccessOption = null,Object? otpFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isOtpLoading: null == isOtpLoading ? _self.isOtpLoading : isOtpLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,forgotIdIdentityDto: freezed == forgotIdIdentityDto ? _self.forgotIdIdentityDto : forgotIdIdentityDto // ignore: cast_nullable_to_non_nullable
as ForgotIdIdentityDto?,selectedIdentityType: freezed == selectedIdentityType ? _self.selectedIdentityType : selectedIdentityType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,identityNumber: null == identityNumber ? _self.identityNumber : identityNumber // ignore: cast_nullable_to_non_nullable
as IdentityNumber,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as MobileNumber,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as Otp,identityTypeFailureOrSuccessOption: null == identityTypeFailureOrSuccessOption ? _self.identityTypeFailureOrSuccessOption : identityTypeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>>,requestOtpFailureOrSuccessOption: null == requestOtpFailureOrSuccessOption ? _self.requestOtpFailureOrSuccessOption : requestOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, Unit>>,resendOtpFailureOrSuccessOption: null == resendOtpFailureOrSuccessOption ? _self.resendOtpFailureOrSuccessOption : resendOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, Unit>>,otpFailureOrSuccessOption: null == otpFailureOrSuccessOption ? _self.otpFailureOrSuccessOption : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>>,
  ));
}
/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotIdIdentityDtoCopyWith<$Res>? get forgotIdIdentityDto {
    if (_self.forgotIdIdentityDto == null) {
    return null;
  }

  return $ForgotIdIdentityDtoCopyWith<$Res>(_self.forgotIdIdentityDto!, (value) {
    return _then(_self.copyWith(forgotIdIdentityDto: value));
  });
}/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedIdentityType {
    if (_self.selectedIdentityType == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedIdentityType!, (value) {
    return _then(_self.copyWith(selectedIdentityType: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForgotMpinState].
extension ForgotMpinStatePatterns on ForgotMpinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotMpinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotMpinState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotMpinState value)  $default,){
final _that = this;
switch (_that) {
case _ForgotMpinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotMpinState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotMpinState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isOtpLoading,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  ForgotIdIdentityDto? forgotIdIdentityDto,  CommonSelectableItem? selectedIdentityType,  IdentityNumber identityNumber,  MobileNumber mobileNumber,  Otp otp,  Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> identityTypeFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, Unit>> requestOtpFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, Unit>> resendOtpFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> otpFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotMpinState() when $default != null:
return $default(_that.isLoading,_that.isOtpLoading,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.forgotIdIdentityDto,_that.selectedIdentityType,_that.identityNumber,_that.mobileNumber,_that.otp,_that.identityTypeFailureOrSuccessOption,_that.requestOtpFailureOrSuccessOption,_that.resendOtpFailureOrSuccessOption,_that.otpFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isOtpLoading,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  ForgotIdIdentityDto? forgotIdIdentityDto,  CommonSelectableItem? selectedIdentityType,  IdentityNumber identityNumber,  MobileNumber mobileNumber,  Otp otp,  Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> identityTypeFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, Unit>> requestOtpFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, Unit>> resendOtpFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> otpFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _ForgotMpinState():
return $default(_that.isLoading,_that.isOtpLoading,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.forgotIdIdentityDto,_that.selectedIdentityType,_that.identityNumber,_that.mobileNumber,_that.otp,_that.identityTypeFailureOrSuccessOption,_that.requestOtpFailureOrSuccessOption,_that.resendOtpFailureOrSuccessOption,_that.otpFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isOtpLoading,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  ForgotIdIdentityDto? forgotIdIdentityDto,  CommonSelectableItem? selectedIdentityType,  IdentityNumber identityNumber,  MobileNumber mobileNumber,  Otp otp,  Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> identityTypeFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, Unit>> requestOtpFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, Unit>> resendOtpFailureOrSuccessOption,  Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> otpFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _ForgotMpinState() when $default != null:
return $default(_that.isLoading,_that.isOtpLoading,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.forgotIdIdentityDto,_that.selectedIdentityType,_that.identityNumber,_that.mobileNumber,_that.otp,_that.identityTypeFailureOrSuccessOption,_that.requestOtpFailureOrSuccessOption,_that.resendOtpFailureOrSuccessOption,_that.otpFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotMpinState implements ForgotMpinState {
  const _ForgotMpinState({required this.isLoading, required this.isOtpLoading, required this.isSubmitting, required this.isOtpSubmitting, required this.showErrorMessages, required this.showOtpErrorMessages, this.forgotIdIdentityDto, this.selectedIdentityType, required this.identityNumber, required this.mobileNumber, required this.otp, required this.identityTypeFailureOrSuccessOption, required this.requestOtpFailureOrSuccessOption, required this.resendOtpFailureOrSuccessOption, required this.otpFailureOrSuccessOption});
  

@override final  bool isLoading;
@override final  bool isOtpLoading;
@override final  bool isSubmitting;
@override final  bool isOtpSubmitting;
@override final  bool showErrorMessages;
@override final  bool showOtpErrorMessages;
@override final  ForgotIdIdentityDto? forgotIdIdentityDto;
@override final  CommonSelectableItem? selectedIdentityType;
@override final  IdentityNumber identityNumber;
@override final  MobileNumber mobileNumber;
@override final  Otp otp;
@override final  Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> identityTypeFailureOrSuccessOption;
@override final  Option<Either<ForgotMpinFailure, Unit>> requestOtpFailureOrSuccessOption;
@override final  Option<Either<ForgotMpinFailure, Unit>> resendOtpFailureOrSuccessOption;
@override final  Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> otpFailureOrSuccessOption;

/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotMpinStateCopyWith<_ForgotMpinState> get copyWith => __$ForgotMpinStateCopyWithImpl<_ForgotMpinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotMpinState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isOtpLoading, isOtpLoading) || other.isOtpLoading == isOtpLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.forgotIdIdentityDto, forgotIdIdentityDto) || other.forgotIdIdentityDto == forgotIdIdentityDto)&&(identical(other.selectedIdentityType, selectedIdentityType) || other.selectedIdentityType == selectedIdentityType)&&(identical(other.identityNumber, identityNumber) || other.identityNumber == identityNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.identityTypeFailureOrSuccessOption, identityTypeFailureOrSuccessOption) || other.identityTypeFailureOrSuccessOption == identityTypeFailureOrSuccessOption)&&(identical(other.requestOtpFailureOrSuccessOption, requestOtpFailureOrSuccessOption) || other.requestOtpFailureOrSuccessOption == requestOtpFailureOrSuccessOption)&&(identical(other.resendOtpFailureOrSuccessOption, resendOtpFailureOrSuccessOption) || other.resendOtpFailureOrSuccessOption == resendOtpFailureOrSuccessOption)&&(identical(other.otpFailureOrSuccessOption, otpFailureOrSuccessOption) || other.otpFailureOrSuccessOption == otpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isOtpLoading,isSubmitting,isOtpSubmitting,showErrorMessages,showOtpErrorMessages,forgotIdIdentityDto,selectedIdentityType,identityNumber,mobileNumber,otp,identityTypeFailureOrSuccessOption,requestOtpFailureOrSuccessOption,resendOtpFailureOrSuccessOption,otpFailureOrSuccessOption);

@override
String toString() {
  return 'ForgotMpinState(isLoading: $isLoading, isOtpLoading: $isOtpLoading, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, showErrorMessages: $showErrorMessages, showOtpErrorMessages: $showOtpErrorMessages, forgotIdIdentityDto: $forgotIdIdentityDto, selectedIdentityType: $selectedIdentityType, identityNumber: $identityNumber, mobileNumber: $mobileNumber, otp: $otp, identityTypeFailureOrSuccessOption: $identityTypeFailureOrSuccessOption, requestOtpFailureOrSuccessOption: $requestOtpFailureOrSuccessOption, resendOtpFailureOrSuccessOption: $resendOtpFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$ForgotMpinStateCopyWith<$Res> implements $ForgotMpinStateCopyWith<$Res> {
  factory _$ForgotMpinStateCopyWith(_ForgotMpinState value, $Res Function(_ForgotMpinState) _then) = __$ForgotMpinStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isOtpLoading, bool isSubmitting, bool isOtpSubmitting, bool showErrorMessages, bool showOtpErrorMessages, ForgotIdIdentityDto? forgotIdIdentityDto, CommonSelectableItem? selectedIdentityType, IdentityNumber identityNumber, MobileNumber mobileNumber, Otp otp, Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>> identityTypeFailureOrSuccessOption, Option<Either<ForgotMpinFailure, Unit>> requestOtpFailureOrSuccessOption, Option<Either<ForgotMpinFailure, Unit>> resendOtpFailureOrSuccessOption, Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>> otpFailureOrSuccessOption
});


@override $ForgotIdIdentityDtoCopyWith<$Res>? get forgotIdIdentityDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedIdentityType;

}
/// @nodoc
class __$ForgotMpinStateCopyWithImpl<$Res>
    implements _$ForgotMpinStateCopyWith<$Res> {
  __$ForgotMpinStateCopyWithImpl(this._self, this._then);

  final _ForgotMpinState _self;
  final $Res Function(_ForgotMpinState) _then;

/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isOtpLoading = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? showErrorMessages = null,Object? showOtpErrorMessages = null,Object? forgotIdIdentityDto = freezed,Object? selectedIdentityType = freezed,Object? identityNumber = null,Object? mobileNumber = null,Object? otp = null,Object? identityTypeFailureOrSuccessOption = null,Object? requestOtpFailureOrSuccessOption = null,Object? resendOtpFailureOrSuccessOption = null,Object? otpFailureOrSuccessOption = null,}) {
  return _then(_ForgotMpinState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isOtpLoading: null == isOtpLoading ? _self.isOtpLoading : isOtpLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,forgotIdIdentityDto: freezed == forgotIdIdentityDto ? _self.forgotIdIdentityDto : forgotIdIdentityDto // ignore: cast_nullable_to_non_nullable
as ForgotIdIdentityDto?,selectedIdentityType: freezed == selectedIdentityType ? _self.selectedIdentityType : selectedIdentityType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,identityNumber: null == identityNumber ? _self.identityNumber : identityNumber // ignore: cast_nullable_to_non_nullable
as IdentityNumber,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as MobileNumber,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as Otp,identityTypeFailureOrSuccessOption: null == identityTypeFailureOrSuccessOption ? _self.identityTypeFailureOrSuccessOption : identityTypeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>>,requestOtpFailureOrSuccessOption: null == requestOtpFailureOrSuccessOption ? _self.requestOtpFailureOrSuccessOption : requestOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, Unit>>,resendOtpFailureOrSuccessOption: null == resendOtpFailureOrSuccessOption ? _self.resendOtpFailureOrSuccessOption : resendOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, Unit>>,otpFailureOrSuccessOption: null == otpFailureOrSuccessOption ? _self.otpFailureOrSuccessOption : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>>,
  ));
}

/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgotIdIdentityDtoCopyWith<$Res>? get forgotIdIdentityDto {
    if (_self.forgotIdIdentityDto == null) {
    return null;
  }

  return $ForgotIdIdentityDtoCopyWith<$Res>(_self.forgotIdIdentityDto!, (value) {
    return _then(_self.copyWith(forgotIdIdentityDto: value));
  });
}/// Create a copy of ForgotMpinState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedIdentityType {
    if (_self.selectedIdentityType == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedIdentityType!, (value) {
    return _then(_self.copyWith(selectedIdentityType: value));
  });
}
}

// dart format on
