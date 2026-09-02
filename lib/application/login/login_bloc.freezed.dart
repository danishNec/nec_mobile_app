// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetIdentityTypes value)?  getIdentityTypes,TResult Function( _IdentityTypeChanged value)?  identityTypeChanged,TResult Function( _IdentityNumberChanged value)?  identityNumberChanged,TResult Function( _MobileNumberChanged value)?  mobileNumberChanged,TResult Function( _RequestOtpPressed value)?  requestOtpPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes(_that);case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetIdentityTypes value)  getIdentityTypes,required TResult Function( _IdentityTypeChanged value)  identityTypeChanged,required TResult Function( _IdentityNumberChanged value)  identityNumberChanged,required TResult Function( _MobileNumberChanged value)  mobileNumberChanged,required TResult Function( _RequestOtpPressed value)  requestOtpPressed,}){
final _that = this;
switch (_that) {
case _GetIdentityTypes():
return getIdentityTypes(_that);case _IdentityTypeChanged():
return identityTypeChanged(_that);case _IdentityNumberChanged():
return identityNumberChanged(_that);case _MobileNumberChanged():
return mobileNumberChanged(_that);case _RequestOtpPressed():
return requestOtpPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetIdentityTypes value)?  getIdentityTypes,TResult? Function( _IdentityTypeChanged value)?  identityTypeChanged,TResult? Function( _IdentityNumberChanged value)?  identityNumberChanged,TResult? Function( _MobileNumberChanged value)?  mobileNumberChanged,TResult? Function( _RequestOtpPressed value)?  requestOtpPressed,}){
final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes(_that);case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getIdentityTypes,TResult Function( CommonSelectableItem selectedIdentityType)?  identityTypeChanged,TResult Function( String identityNumberStr)?  identityNumberChanged,TResult Function( String mobileNumberStr)?  mobileNumberChanged,TResult Function()?  requestOtpPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes();case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that.selectedIdentityType);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that.identityNumberStr);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that.mobileNumberStr);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getIdentityTypes,required TResult Function( CommonSelectableItem selectedIdentityType)  identityTypeChanged,required TResult Function( String identityNumberStr)  identityNumberChanged,required TResult Function( String mobileNumberStr)  mobileNumberChanged,required TResult Function()  requestOtpPressed,}) {final _that = this;
switch (_that) {
case _GetIdentityTypes():
return getIdentityTypes();case _IdentityTypeChanged():
return identityTypeChanged(_that.selectedIdentityType);case _IdentityNumberChanged():
return identityNumberChanged(_that.identityNumberStr);case _MobileNumberChanged():
return mobileNumberChanged(_that.mobileNumberStr);case _RequestOtpPressed():
return requestOtpPressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getIdentityTypes,TResult? Function( CommonSelectableItem selectedIdentityType)?  identityTypeChanged,TResult? Function( String identityNumberStr)?  identityNumberChanged,TResult? Function( String mobileNumberStr)?  mobileNumberChanged,TResult? Function()?  requestOtpPressed,}) {final _that = this;
switch (_that) {
case _GetIdentityTypes() when getIdentityTypes != null:
return getIdentityTypes();case _IdentityTypeChanged() when identityTypeChanged != null:
return identityTypeChanged(_that.selectedIdentityType);case _IdentityNumberChanged() when identityNumberChanged != null:
return identityNumberChanged(_that.identityNumberStr);case _MobileNumberChanged() when mobileNumberChanged != null:
return mobileNumberChanged(_that.mobileNumberStr);case _RequestOtpPressed() when requestOtpPressed != null:
return requestOtpPressed();case _:
  return null;

}
}

}

/// @nodoc


class _GetIdentityTypes implements LoginEvent {
  const _GetIdentityTypes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetIdentityTypes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.getIdentityTypes()';
}


}




/// @nodoc


class _IdentityTypeChanged implements LoginEvent {
  const _IdentityTypeChanged({required this.selectedIdentityType});
  

 final  CommonSelectableItem selectedIdentityType;

/// Create a copy of LoginEvent
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
  return 'LoginEvent.identityTypeChanged(selectedIdentityType: $selectedIdentityType)';
}


}

/// @nodoc
abstract mixin class _$IdentityTypeChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
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

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedIdentityType = null,}) {
  return _then(_IdentityTypeChanged(
selectedIdentityType: null == selectedIdentityType ? _self.selectedIdentityType : selectedIdentityType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of LoginEvent
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


class _IdentityNumberChanged implements LoginEvent {
  const _IdentityNumberChanged(this.identityNumberStr);
  

 final  String identityNumberStr;

/// Create a copy of LoginEvent
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
  return 'LoginEvent.identityNumberChanged(identityNumberStr: $identityNumberStr)';
}


}

/// @nodoc
abstract mixin class _$IdentityNumberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
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

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? identityNumberStr = null,}) {
  return _then(_IdentityNumberChanged(
null == identityNumberStr ? _self.identityNumberStr : identityNumberStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _MobileNumberChanged implements LoginEvent {
  const _MobileNumberChanged(this.mobileNumberStr);
  

 final  String mobileNumberStr;

/// Create a copy of LoginEvent
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
  return 'LoginEvent.mobileNumberChanged(mobileNumberStr: $mobileNumberStr)';
}


}

/// @nodoc
abstract mixin class _$MobileNumberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
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

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mobileNumberStr = null,}) {
  return _then(_MobileNumberChanged(
null == mobileNumberStr ? _self.mobileNumberStr : mobileNumberStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequestOtpPressed implements LoginEvent {
  const _RequestOtpPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestOtpPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.requestOtpPressed()';
}


}




/// @nodoc
mixin _$LoginState {

 bool get isLoading; bool get isSubmitting; bool get showErrorMessages; LoginIdIdentityDto? get loginIdIdentityDto; CommonSelectableItem? get selectedIdentityType; IdentityNumber get identityNumber; MobileNumber get mobileNumber; Option<Either<LoginFailure, LoginIdIdentityDto>> get identityTypesFailureOrSuccessOption; Option<Either<LoginFailure, Unit>> get loginFailureOrSuccessOption;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.loginIdIdentityDto, loginIdIdentityDto) || other.loginIdIdentityDto == loginIdIdentityDto)&&(identical(other.selectedIdentityType, selectedIdentityType) || other.selectedIdentityType == selectedIdentityType)&&(identical(other.identityNumber, identityNumber) || other.identityNumber == identityNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.identityTypesFailureOrSuccessOption, identityTypesFailureOrSuccessOption) || other.identityTypesFailureOrSuccessOption == identityTypesFailureOrSuccessOption)&&(identical(other.loginFailureOrSuccessOption, loginFailureOrSuccessOption) || other.loginFailureOrSuccessOption == loginFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,showErrorMessages,loginIdIdentityDto,selectedIdentityType,identityNumber,mobileNumber,identityTypesFailureOrSuccessOption,loginFailureOrSuccessOption);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, loginIdIdentityDto: $loginIdIdentityDto, selectedIdentityType: $selectedIdentityType, identityNumber: $identityNumber, mobileNumber: $mobileNumber, identityTypesFailureOrSuccessOption: $identityTypesFailureOrSuccessOption, loginFailureOrSuccessOption: $loginFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSubmitting, bool showErrorMessages, LoginIdIdentityDto? loginIdIdentityDto, CommonSelectableItem? selectedIdentityType, IdentityNumber identityNumber, MobileNumber mobileNumber, Option<Either<LoginFailure, LoginIdIdentityDto>> identityTypesFailureOrSuccessOption, Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption
});


$LoginIdIdentityDtoCopyWith<$Res>? get loginIdIdentityDto;$CommonSelectableItemCopyWith<$Res>? get selectedIdentityType;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? showErrorMessages = null,Object? loginIdIdentityDto = freezed,Object? selectedIdentityType = freezed,Object? identityNumber = null,Object? mobileNumber = null,Object? identityTypesFailureOrSuccessOption = null,Object? loginFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,loginIdIdentityDto: freezed == loginIdIdentityDto ? _self.loginIdIdentityDto : loginIdIdentityDto // ignore: cast_nullable_to_non_nullable
as LoginIdIdentityDto?,selectedIdentityType: freezed == selectedIdentityType ? _self.selectedIdentityType : selectedIdentityType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,identityNumber: null == identityNumber ? _self.identityNumber : identityNumber // ignore: cast_nullable_to_non_nullable
as IdentityNumber,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as MobileNumber,identityTypesFailureOrSuccessOption: null == identityTypesFailureOrSuccessOption ? _self.identityTypesFailureOrSuccessOption : identityTypesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<LoginFailure, LoginIdIdentityDto>>,loginFailureOrSuccessOption: null == loginFailureOrSuccessOption ? _self.loginFailureOrSuccessOption : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<LoginFailure, Unit>>,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginIdIdentityDtoCopyWith<$Res>? get loginIdIdentityDto {
    if (_self.loginIdIdentityDto == null) {
    return null;
  }

  return $LoginIdIdentityDtoCopyWith<$Res>(_self.loginIdIdentityDto!, (value) {
    return _then(_self.copyWith(loginIdIdentityDto: value));
  });
}/// Create a copy of LoginState
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


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool showErrorMessages,  LoginIdIdentityDto? loginIdIdentityDto,  CommonSelectableItem? selectedIdentityType,  IdentityNumber identityNumber,  MobileNumber mobileNumber,  Option<Either<LoginFailure, LoginIdIdentityDto>> identityTypesFailureOrSuccessOption,  Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.showErrorMessages,_that.loginIdIdentityDto,_that.selectedIdentityType,_that.identityNumber,_that.mobileNumber,_that.identityTypesFailureOrSuccessOption,_that.loginFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSubmitting,  bool showErrorMessages,  LoginIdIdentityDto? loginIdIdentityDto,  CommonSelectableItem? selectedIdentityType,  IdentityNumber identityNumber,  MobileNumber mobileNumber,  Option<Either<LoginFailure, LoginIdIdentityDto>> identityTypesFailureOrSuccessOption,  Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.isLoading,_that.isSubmitting,_that.showErrorMessages,_that.loginIdIdentityDto,_that.selectedIdentityType,_that.identityNumber,_that.mobileNumber,_that.identityTypesFailureOrSuccessOption,_that.loginFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSubmitting,  bool showErrorMessages,  LoginIdIdentityDto? loginIdIdentityDto,  CommonSelectableItem? selectedIdentityType,  IdentityNumber identityNumber,  MobileNumber mobileNumber,  Option<Either<LoginFailure, LoginIdIdentityDto>> identityTypesFailureOrSuccessOption,  Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.isSubmitting,_that.showErrorMessages,_that.loginIdIdentityDto,_that.selectedIdentityType,_that.identityNumber,_that.mobileNumber,_that.identityTypesFailureOrSuccessOption,_that.loginFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({required this.isLoading, required this.isSubmitting, required this.showErrorMessages, this.loginIdIdentityDto, this.selectedIdentityType, required this.identityNumber, required this.mobileNumber, required this.identityTypesFailureOrSuccessOption, required this.loginFailureOrSuccessOption});
  

@override final  bool isLoading;
@override final  bool isSubmitting;
@override final  bool showErrorMessages;
@override final  LoginIdIdentityDto? loginIdIdentityDto;
@override final  CommonSelectableItem? selectedIdentityType;
@override final  IdentityNumber identityNumber;
@override final  MobileNumber mobileNumber;
@override final  Option<Either<LoginFailure, LoginIdIdentityDto>> identityTypesFailureOrSuccessOption;
@override final  Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.loginIdIdentityDto, loginIdIdentityDto) || other.loginIdIdentityDto == loginIdIdentityDto)&&(identical(other.selectedIdentityType, selectedIdentityType) || other.selectedIdentityType == selectedIdentityType)&&(identical(other.identityNumber, identityNumber) || other.identityNumber == identityNumber)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.identityTypesFailureOrSuccessOption, identityTypesFailureOrSuccessOption) || other.identityTypesFailureOrSuccessOption == identityTypesFailureOrSuccessOption)&&(identical(other.loginFailureOrSuccessOption, loginFailureOrSuccessOption) || other.loginFailureOrSuccessOption == loginFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSubmitting,showErrorMessages,loginIdIdentityDto,selectedIdentityType,identityNumber,mobileNumber,identityTypesFailureOrSuccessOption,loginFailureOrSuccessOption);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, loginIdIdentityDto: $loginIdIdentityDto, selectedIdentityType: $selectedIdentityType, identityNumber: $identityNumber, mobileNumber: $mobileNumber, identityTypesFailureOrSuccessOption: $identityTypesFailureOrSuccessOption, loginFailureOrSuccessOption: $loginFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSubmitting, bool showErrorMessages, LoginIdIdentityDto? loginIdIdentityDto, CommonSelectableItem? selectedIdentityType, IdentityNumber identityNumber, MobileNumber mobileNumber, Option<Either<LoginFailure, LoginIdIdentityDto>> identityTypesFailureOrSuccessOption, Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption
});


@override $LoginIdIdentityDtoCopyWith<$Res>? get loginIdIdentityDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedIdentityType;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSubmitting = null,Object? showErrorMessages = null,Object? loginIdIdentityDto = freezed,Object? selectedIdentityType = freezed,Object? identityNumber = null,Object? mobileNumber = null,Object? identityTypesFailureOrSuccessOption = null,Object? loginFailureOrSuccessOption = null,}) {
  return _then(_LoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,loginIdIdentityDto: freezed == loginIdIdentityDto ? _self.loginIdIdentityDto : loginIdIdentityDto // ignore: cast_nullable_to_non_nullable
as LoginIdIdentityDto?,selectedIdentityType: freezed == selectedIdentityType ? _self.selectedIdentityType : selectedIdentityType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,identityNumber: null == identityNumber ? _self.identityNumber : identityNumber // ignore: cast_nullable_to_non_nullable
as IdentityNumber,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as MobileNumber,identityTypesFailureOrSuccessOption: null == identityTypesFailureOrSuccessOption ? _self.identityTypesFailureOrSuccessOption : identityTypesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<LoginFailure, LoginIdIdentityDto>>,loginFailureOrSuccessOption: null == loginFailureOrSuccessOption ? _self.loginFailureOrSuccessOption : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<LoginFailure, Unit>>,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginIdIdentityDtoCopyWith<$Res>? get loginIdIdentityDto {
    if (_self.loginIdIdentityDto == null) {
    return null;
  }

  return $LoginIdIdentityDtoCopyWith<$Res>(_self.loginIdIdentityDto!, (value) {
    return _then(_self.copyWith(loginIdIdentityDto: value));
  });
}/// Create a copy of LoginState
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
