// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_mpin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetMpinEvent {

 String get mpin;
/// Create a copy of SetMpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetMpinEventCopyWith<SetMpinEvent> get copyWith => _$SetMpinEventCopyWithImpl<SetMpinEvent>(this as SetMpinEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetMpinEvent&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'SetMpinEvent(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class $SetMpinEventCopyWith<$Res>  {
  factory $SetMpinEventCopyWith(SetMpinEvent value, $Res Function(SetMpinEvent) _then) = _$SetMpinEventCopyWithImpl;
@useResult
$Res call({
 String mpin
});




}
/// @nodoc
class _$SetMpinEventCopyWithImpl<$Res>
    implements $SetMpinEventCopyWith<$Res> {
  _$SetMpinEventCopyWithImpl(this._self, this._then);

  final SetMpinEvent _self;
  final $Res Function(SetMpinEvent) _then;

/// Create a copy of SetMpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mpin = null,}) {
  return _then(_self.copyWith(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SetMpinEvent].
extension SetMpinEventPatterns on SetMpinEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetNewMpin value)?  setNewMpin,TResult Function( _SetVerifyNewMpin value)?  setVerifyNewMpin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetNewMpin() when setNewMpin != null:
return setNewMpin(_that);case _SetVerifyNewMpin() when setVerifyNewMpin != null:
return setVerifyNewMpin(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetNewMpin value)  setNewMpin,required TResult Function( _SetVerifyNewMpin value)  setVerifyNewMpin,}){
final _that = this;
switch (_that) {
case _SetNewMpin():
return setNewMpin(_that);case _SetVerifyNewMpin():
return setVerifyNewMpin(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetNewMpin value)?  setNewMpin,TResult? Function( _SetVerifyNewMpin value)?  setVerifyNewMpin,}){
final _that = this;
switch (_that) {
case _SetNewMpin() when setNewMpin != null:
return setNewMpin(_that);case _SetVerifyNewMpin() when setVerifyNewMpin != null:
return setVerifyNewMpin(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mpin)?  setNewMpin,TResult Function( String mpin)?  setVerifyNewMpin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetNewMpin() when setNewMpin != null:
return setNewMpin(_that.mpin);case _SetVerifyNewMpin() when setVerifyNewMpin != null:
return setVerifyNewMpin(_that.mpin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mpin)  setNewMpin,required TResult Function( String mpin)  setVerifyNewMpin,}) {final _that = this;
switch (_that) {
case _SetNewMpin():
return setNewMpin(_that.mpin);case _SetVerifyNewMpin():
return setVerifyNewMpin(_that.mpin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mpin)?  setNewMpin,TResult? Function( String mpin)?  setVerifyNewMpin,}) {final _that = this;
switch (_that) {
case _SetNewMpin() when setNewMpin != null:
return setNewMpin(_that.mpin);case _SetVerifyNewMpin() when setVerifyNewMpin != null:
return setVerifyNewMpin(_that.mpin);case _:
  return null;

}
}

}

/// @nodoc


class _SetNewMpin implements SetMpinEvent {
  const _SetNewMpin({required this.mpin});
  

@override final  String mpin;

/// Create a copy of SetMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetNewMpinCopyWith<_SetNewMpin> get copyWith => __$SetNewMpinCopyWithImpl<_SetNewMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetNewMpin&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'SetMpinEvent.setNewMpin(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class _$SetNewMpinCopyWith<$Res> implements $SetMpinEventCopyWith<$Res> {
  factory _$SetNewMpinCopyWith(_SetNewMpin value, $Res Function(_SetNewMpin) _then) = __$SetNewMpinCopyWithImpl;
@override @useResult
$Res call({
 String mpin
});




}
/// @nodoc
class __$SetNewMpinCopyWithImpl<$Res>
    implements _$SetNewMpinCopyWith<$Res> {
  __$SetNewMpinCopyWithImpl(this._self, this._then);

  final _SetNewMpin _self;
  final $Res Function(_SetNewMpin) _then;

/// Create a copy of SetMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mpin = null,}) {
  return _then(_SetNewMpin(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SetVerifyNewMpin implements SetMpinEvent {
  const _SetVerifyNewMpin({required this.mpin});
  

@override final  String mpin;

/// Create a copy of SetMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetVerifyNewMpinCopyWith<_SetVerifyNewMpin> get copyWith => __$SetVerifyNewMpinCopyWithImpl<_SetVerifyNewMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetVerifyNewMpin&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'SetMpinEvent.setVerifyNewMpin(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class _$SetVerifyNewMpinCopyWith<$Res> implements $SetMpinEventCopyWith<$Res> {
  factory _$SetVerifyNewMpinCopyWith(_SetVerifyNewMpin value, $Res Function(_SetVerifyNewMpin) _then) = __$SetVerifyNewMpinCopyWithImpl;
@override @useResult
$Res call({
 String mpin
});




}
/// @nodoc
class __$SetVerifyNewMpinCopyWithImpl<$Res>
    implements _$SetVerifyNewMpinCopyWith<$Res> {
  __$SetVerifyNewMpinCopyWithImpl(this._self, this._then);

  final _SetVerifyNewMpin _self;
  final $Res Function(_SetVerifyNewMpin) _then;

/// Create a copy of SetMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mpin = null,}) {
  return _then(_SetVerifyNewMpin(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SetMpinState {

 bool get isSubmitting; NewMpin get newMpin; Option<Either<SetMpinFailure, Unit>> get setNewMpinFailureOrSuccessOption; Option<Either<SetMpinFailure, Unit>> get setVerifyMpinFailureOrSuccessOption;
/// Create a copy of SetMpinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetMpinStateCopyWith<SetMpinState> get copyWith => _$SetMpinStateCopyWithImpl<SetMpinState>(this as SetMpinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetMpinState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.newMpin, newMpin) || other.newMpin == newMpin)&&(identical(other.setNewMpinFailureOrSuccessOption, setNewMpinFailureOrSuccessOption) || other.setNewMpinFailureOrSuccessOption == setNewMpinFailureOrSuccessOption)&&(identical(other.setVerifyMpinFailureOrSuccessOption, setVerifyMpinFailureOrSuccessOption) || other.setVerifyMpinFailureOrSuccessOption == setVerifyMpinFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,newMpin,setNewMpinFailureOrSuccessOption,setVerifyMpinFailureOrSuccessOption);

@override
String toString() {
  return 'SetMpinState(isSubmitting: $isSubmitting, newMpin: $newMpin, setNewMpinFailureOrSuccessOption: $setNewMpinFailureOrSuccessOption, setVerifyMpinFailureOrSuccessOption: $setVerifyMpinFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $SetMpinStateCopyWith<$Res>  {
  factory $SetMpinStateCopyWith(SetMpinState value, $Res Function(SetMpinState) _then) = _$SetMpinStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, NewMpin newMpin, Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption, Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption
});




}
/// @nodoc
class _$SetMpinStateCopyWithImpl<$Res>
    implements $SetMpinStateCopyWith<$Res> {
  _$SetMpinStateCopyWithImpl(this._self, this._then);

  final SetMpinState _self;
  final $Res Function(SetMpinState) _then;

/// Create a copy of SetMpinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? newMpin = null,Object? setNewMpinFailureOrSuccessOption = null,Object? setVerifyMpinFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,newMpin: null == newMpin ? _self.newMpin : newMpin // ignore: cast_nullable_to_non_nullable
as NewMpin,setNewMpinFailureOrSuccessOption: null == setNewMpinFailureOrSuccessOption ? _self.setNewMpinFailureOrSuccessOption : setNewMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SetMpinFailure, Unit>>,setVerifyMpinFailureOrSuccessOption: null == setVerifyMpinFailureOrSuccessOption ? _self.setVerifyMpinFailureOrSuccessOption : setVerifyMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SetMpinFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [SetMpinState].
extension SetMpinStatePatterns on SetMpinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetMpinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetMpinState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetMpinState value)  $default,){
final _that = this;
switch (_that) {
case _SetMpinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetMpinState value)?  $default,){
final _that = this;
switch (_that) {
case _SetMpinState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  NewMpin newMpin,  Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption,  Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetMpinState() when $default != null:
return $default(_that.isSubmitting,_that.newMpin,_that.setNewMpinFailureOrSuccessOption,_that.setVerifyMpinFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  NewMpin newMpin,  Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption,  Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _SetMpinState():
return $default(_that.isSubmitting,_that.newMpin,_that.setNewMpinFailureOrSuccessOption,_that.setVerifyMpinFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  NewMpin newMpin,  Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption,  Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _SetMpinState() when $default != null:
return $default(_that.isSubmitting,_that.newMpin,_that.setNewMpinFailureOrSuccessOption,_that.setVerifyMpinFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _SetMpinState implements SetMpinState {
  const _SetMpinState({required this.isSubmitting, required this.newMpin, required this.setNewMpinFailureOrSuccessOption, required this.setVerifyMpinFailureOrSuccessOption});
  

@override final  bool isSubmitting;
@override final  NewMpin newMpin;
@override final  Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption;
@override final  Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption;

/// Create a copy of SetMpinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetMpinStateCopyWith<_SetMpinState> get copyWith => __$SetMpinStateCopyWithImpl<_SetMpinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetMpinState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.newMpin, newMpin) || other.newMpin == newMpin)&&(identical(other.setNewMpinFailureOrSuccessOption, setNewMpinFailureOrSuccessOption) || other.setNewMpinFailureOrSuccessOption == setNewMpinFailureOrSuccessOption)&&(identical(other.setVerifyMpinFailureOrSuccessOption, setVerifyMpinFailureOrSuccessOption) || other.setVerifyMpinFailureOrSuccessOption == setVerifyMpinFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,newMpin,setNewMpinFailureOrSuccessOption,setVerifyMpinFailureOrSuccessOption);

@override
String toString() {
  return 'SetMpinState(isSubmitting: $isSubmitting, newMpin: $newMpin, setNewMpinFailureOrSuccessOption: $setNewMpinFailureOrSuccessOption, setVerifyMpinFailureOrSuccessOption: $setVerifyMpinFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$SetMpinStateCopyWith<$Res> implements $SetMpinStateCopyWith<$Res> {
  factory _$SetMpinStateCopyWith(_SetMpinState value, $Res Function(_SetMpinState) _then) = __$SetMpinStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, NewMpin newMpin, Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption, Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption
});




}
/// @nodoc
class __$SetMpinStateCopyWithImpl<$Res>
    implements _$SetMpinStateCopyWith<$Res> {
  __$SetMpinStateCopyWithImpl(this._self, this._then);

  final _SetMpinState _self;
  final $Res Function(_SetMpinState) _then;

/// Create a copy of SetMpinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? newMpin = null,Object? setNewMpinFailureOrSuccessOption = null,Object? setVerifyMpinFailureOrSuccessOption = null,}) {
  return _then(_SetMpinState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,newMpin: null == newMpin ? _self.newMpin : newMpin // ignore: cast_nullable_to_non_nullable
as NewMpin,setNewMpinFailureOrSuccessOption: null == setNewMpinFailureOrSuccessOption ? _self.setNewMpinFailureOrSuccessOption : setNewMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SetMpinFailure, Unit>>,setVerifyMpinFailureOrSuccessOption: null == setVerifyMpinFailureOrSuccessOption ? _self.setVerifyMpinFailureOrSuccessOption : setVerifyMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SetMpinFailure, Unit>>,
  ));
}


}

// dart format on
