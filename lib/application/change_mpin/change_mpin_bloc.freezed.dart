// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_mpin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangeMpinEvent {

 String get mpin;
/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeMpinEventCopyWith<ChangeMpinEvent> get copyWith => _$ChangeMpinEventCopyWithImpl<ChangeMpinEvent>(this as ChangeMpinEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMpinEvent&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'ChangeMpinEvent(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class $ChangeMpinEventCopyWith<$Res>  {
  factory $ChangeMpinEventCopyWith(ChangeMpinEvent value, $Res Function(ChangeMpinEvent) _then) = _$ChangeMpinEventCopyWithImpl;
@useResult
$Res call({
 String mpin
});




}
/// @nodoc
class _$ChangeMpinEventCopyWithImpl<$Res>
    implements $ChangeMpinEventCopyWith<$Res> {
  _$ChangeMpinEventCopyWithImpl(this._self, this._then);

  final ChangeMpinEvent _self;
  final $Res Function(ChangeMpinEvent) _then;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mpin = null,}) {
  return _then(_self.copyWith(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeMpinEvent].
extension ChangeMpinEventPatterns on ChangeMpinEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangeCurrentMpin value)?  changeCurrentMpin,TResult Function( _ChangeNewMpin value)?  changeNewMpin,TResult Function( _ChangeVerifyMpin value)?  changeVerifyMpin,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeCurrentMpin() when changeCurrentMpin != null:
return changeCurrentMpin(_that);case _ChangeNewMpin() when changeNewMpin != null:
return changeNewMpin(_that);case _ChangeVerifyMpin() when changeVerifyMpin != null:
return changeVerifyMpin(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangeCurrentMpin value)  changeCurrentMpin,required TResult Function( _ChangeNewMpin value)  changeNewMpin,required TResult Function( _ChangeVerifyMpin value)  changeVerifyMpin,}){
final _that = this;
switch (_that) {
case _ChangeCurrentMpin():
return changeCurrentMpin(_that);case _ChangeNewMpin():
return changeNewMpin(_that);case _ChangeVerifyMpin():
return changeVerifyMpin(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangeCurrentMpin value)?  changeCurrentMpin,TResult? Function( _ChangeNewMpin value)?  changeNewMpin,TResult? Function( _ChangeVerifyMpin value)?  changeVerifyMpin,}){
final _that = this;
switch (_that) {
case _ChangeCurrentMpin() when changeCurrentMpin != null:
return changeCurrentMpin(_that);case _ChangeNewMpin() when changeNewMpin != null:
return changeNewMpin(_that);case _ChangeVerifyMpin() when changeVerifyMpin != null:
return changeVerifyMpin(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mpin)?  changeCurrentMpin,TResult Function( String mpin)?  changeNewMpin,TResult Function( String mpin)?  changeVerifyMpin,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeCurrentMpin() when changeCurrentMpin != null:
return changeCurrentMpin(_that.mpin);case _ChangeNewMpin() when changeNewMpin != null:
return changeNewMpin(_that.mpin);case _ChangeVerifyMpin() when changeVerifyMpin != null:
return changeVerifyMpin(_that.mpin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mpin)  changeCurrentMpin,required TResult Function( String mpin)  changeNewMpin,required TResult Function( String mpin)  changeVerifyMpin,}) {final _that = this;
switch (_that) {
case _ChangeCurrentMpin():
return changeCurrentMpin(_that.mpin);case _ChangeNewMpin():
return changeNewMpin(_that.mpin);case _ChangeVerifyMpin():
return changeVerifyMpin(_that.mpin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mpin)?  changeCurrentMpin,TResult? Function( String mpin)?  changeNewMpin,TResult? Function( String mpin)?  changeVerifyMpin,}) {final _that = this;
switch (_that) {
case _ChangeCurrentMpin() when changeCurrentMpin != null:
return changeCurrentMpin(_that.mpin);case _ChangeNewMpin() when changeNewMpin != null:
return changeNewMpin(_that.mpin);case _ChangeVerifyMpin() when changeVerifyMpin != null:
return changeVerifyMpin(_that.mpin);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeCurrentMpin implements ChangeMpinEvent {
  const _ChangeCurrentMpin({required this.mpin});
  

@override final  String mpin;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCurrentMpinCopyWith<_ChangeCurrentMpin> get copyWith => __$ChangeCurrentMpinCopyWithImpl<_ChangeCurrentMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeCurrentMpin&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'ChangeMpinEvent.changeCurrentMpin(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class _$ChangeCurrentMpinCopyWith<$Res> implements $ChangeMpinEventCopyWith<$Res> {
  factory _$ChangeCurrentMpinCopyWith(_ChangeCurrentMpin value, $Res Function(_ChangeCurrentMpin) _then) = __$ChangeCurrentMpinCopyWithImpl;
@override @useResult
$Res call({
 String mpin
});




}
/// @nodoc
class __$ChangeCurrentMpinCopyWithImpl<$Res>
    implements _$ChangeCurrentMpinCopyWith<$Res> {
  __$ChangeCurrentMpinCopyWithImpl(this._self, this._then);

  final _ChangeCurrentMpin _self;
  final $Res Function(_ChangeCurrentMpin) _then;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mpin = null,}) {
  return _then(_ChangeCurrentMpin(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangeNewMpin implements ChangeMpinEvent {
  const _ChangeNewMpin({required this.mpin});
  

@override final  String mpin;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeNewMpinCopyWith<_ChangeNewMpin> get copyWith => __$ChangeNewMpinCopyWithImpl<_ChangeNewMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeNewMpin&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'ChangeMpinEvent.changeNewMpin(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class _$ChangeNewMpinCopyWith<$Res> implements $ChangeMpinEventCopyWith<$Res> {
  factory _$ChangeNewMpinCopyWith(_ChangeNewMpin value, $Res Function(_ChangeNewMpin) _then) = __$ChangeNewMpinCopyWithImpl;
@override @useResult
$Res call({
 String mpin
});




}
/// @nodoc
class __$ChangeNewMpinCopyWithImpl<$Res>
    implements _$ChangeNewMpinCopyWith<$Res> {
  __$ChangeNewMpinCopyWithImpl(this._self, this._then);

  final _ChangeNewMpin _self;
  final $Res Function(_ChangeNewMpin) _then;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mpin = null,}) {
  return _then(_ChangeNewMpin(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangeVerifyMpin implements ChangeMpinEvent {
  const _ChangeVerifyMpin({required this.mpin});
  

@override final  String mpin;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeVerifyMpinCopyWith<_ChangeVerifyMpin> get copyWith => __$ChangeVerifyMpinCopyWithImpl<_ChangeVerifyMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeVerifyMpin&&(identical(other.mpin, mpin) || other.mpin == mpin));
}


@override
int get hashCode => Object.hash(runtimeType,mpin);

@override
String toString() {
  return 'ChangeMpinEvent.changeVerifyMpin(mpin: $mpin)';
}


}

/// @nodoc
abstract mixin class _$ChangeVerifyMpinCopyWith<$Res> implements $ChangeMpinEventCopyWith<$Res> {
  factory _$ChangeVerifyMpinCopyWith(_ChangeVerifyMpin value, $Res Function(_ChangeVerifyMpin) _then) = __$ChangeVerifyMpinCopyWithImpl;
@override @useResult
$Res call({
 String mpin
});




}
/// @nodoc
class __$ChangeVerifyMpinCopyWithImpl<$Res>
    implements _$ChangeVerifyMpinCopyWith<$Res> {
  __$ChangeVerifyMpinCopyWithImpl(this._self, this._then);

  final _ChangeVerifyMpin _self;
  final $Res Function(_ChangeVerifyMpin) _then;

/// Create a copy of ChangeMpinEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mpin = null,}) {
  return _then(_ChangeVerifyMpin(
mpin: null == mpin ? _self.mpin : mpin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChangeMpinState {

 bool get isSubmitting; String get currentMpin; NewMpin get newMpin; Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> get changeMpinFailureOrSuccessOption; Option<Either<ChangeMpinFailure, Unit>> get changeNewMpinFailureOrSuccessOption; Option<Either<ChangeMpinFailure, Unit>> get changeVerifyMpinFailureOrSuccessOption;
/// Create a copy of ChangeMpinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeMpinStateCopyWith<ChangeMpinState> get copyWith => _$ChangeMpinStateCopyWithImpl<ChangeMpinState>(this as ChangeMpinState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMpinState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.currentMpin, currentMpin) || other.currentMpin == currentMpin)&&(identical(other.newMpin, newMpin) || other.newMpin == newMpin)&&(identical(other.changeMpinFailureOrSuccessOption, changeMpinFailureOrSuccessOption) || other.changeMpinFailureOrSuccessOption == changeMpinFailureOrSuccessOption)&&(identical(other.changeNewMpinFailureOrSuccessOption, changeNewMpinFailureOrSuccessOption) || other.changeNewMpinFailureOrSuccessOption == changeNewMpinFailureOrSuccessOption)&&(identical(other.changeVerifyMpinFailureOrSuccessOption, changeVerifyMpinFailureOrSuccessOption) || other.changeVerifyMpinFailureOrSuccessOption == changeVerifyMpinFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,currentMpin,newMpin,changeMpinFailureOrSuccessOption,changeNewMpinFailureOrSuccessOption,changeVerifyMpinFailureOrSuccessOption);

@override
String toString() {
  return 'ChangeMpinState(isSubmitting: $isSubmitting, currentMpin: $currentMpin, newMpin: $newMpin, changeMpinFailureOrSuccessOption: $changeMpinFailureOrSuccessOption, changeNewMpinFailureOrSuccessOption: $changeNewMpinFailureOrSuccessOption, changeVerifyMpinFailureOrSuccessOption: $changeVerifyMpinFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $ChangeMpinStateCopyWith<$Res>  {
  factory $ChangeMpinStateCopyWith(ChangeMpinState value, $Res Function(ChangeMpinState) _then) = _$ChangeMpinStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, String currentMpin, NewMpin newMpin, Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeMpinFailureOrSuccessOption, Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption, Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption
});




}
/// @nodoc
class _$ChangeMpinStateCopyWithImpl<$Res>
    implements $ChangeMpinStateCopyWith<$Res> {
  _$ChangeMpinStateCopyWithImpl(this._self, this._then);

  final ChangeMpinState _self;
  final $Res Function(ChangeMpinState) _then;

/// Create a copy of ChangeMpinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? currentMpin = null,Object? newMpin = null,Object? changeMpinFailureOrSuccessOption = null,Object? changeNewMpinFailureOrSuccessOption = null,Object? changeVerifyMpinFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,currentMpin: null == currentMpin ? _self.currentMpin : currentMpin // ignore: cast_nullable_to_non_nullable
as String,newMpin: null == newMpin ? _self.newMpin : newMpin // ignore: cast_nullable_to_non_nullable
as NewMpin,changeMpinFailureOrSuccessOption: null == changeMpinFailureOrSuccessOption ? _self.changeMpinFailureOrSuccessOption : changeMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>>,changeNewMpinFailureOrSuccessOption: null == changeNewMpinFailureOrSuccessOption ? _self.changeNewMpinFailureOrSuccessOption : changeNewMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ChangeMpinFailure, Unit>>,changeVerifyMpinFailureOrSuccessOption: null == changeVerifyMpinFailureOrSuccessOption ? _self.changeVerifyMpinFailureOrSuccessOption : changeVerifyMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ChangeMpinFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeMpinState].
extension ChangeMpinStatePatterns on ChangeMpinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeMpinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeMpinState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeMpinState value)  $default,){
final _that = this;
switch (_that) {
case _ChangeMpinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeMpinState value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeMpinState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  String currentMpin,  NewMpin newMpin,  Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeMpinFailureOrSuccessOption,  Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption,  Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeMpinState() when $default != null:
return $default(_that.isSubmitting,_that.currentMpin,_that.newMpin,_that.changeMpinFailureOrSuccessOption,_that.changeNewMpinFailureOrSuccessOption,_that.changeVerifyMpinFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  String currentMpin,  NewMpin newMpin,  Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeMpinFailureOrSuccessOption,  Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption,  Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _ChangeMpinState():
return $default(_that.isSubmitting,_that.currentMpin,_that.newMpin,_that.changeMpinFailureOrSuccessOption,_that.changeNewMpinFailureOrSuccessOption,_that.changeVerifyMpinFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  String currentMpin,  NewMpin newMpin,  Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeMpinFailureOrSuccessOption,  Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption,  Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _ChangeMpinState() when $default != null:
return $default(_that.isSubmitting,_that.currentMpin,_that.newMpin,_that.changeMpinFailureOrSuccessOption,_that.changeNewMpinFailureOrSuccessOption,_that.changeVerifyMpinFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeMpinState implements ChangeMpinState {
  const _ChangeMpinState({required this.isSubmitting, required this.currentMpin, required this.newMpin, required this.changeMpinFailureOrSuccessOption, required this.changeNewMpinFailureOrSuccessOption, required this.changeVerifyMpinFailureOrSuccessOption});
  

@override final  bool isSubmitting;
@override final  String currentMpin;
@override final  NewMpin newMpin;
@override final  Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeMpinFailureOrSuccessOption;
@override final  Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption;
@override final  Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption;

/// Create a copy of ChangeMpinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeMpinStateCopyWith<_ChangeMpinState> get copyWith => __$ChangeMpinStateCopyWithImpl<_ChangeMpinState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeMpinState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.currentMpin, currentMpin) || other.currentMpin == currentMpin)&&(identical(other.newMpin, newMpin) || other.newMpin == newMpin)&&(identical(other.changeMpinFailureOrSuccessOption, changeMpinFailureOrSuccessOption) || other.changeMpinFailureOrSuccessOption == changeMpinFailureOrSuccessOption)&&(identical(other.changeNewMpinFailureOrSuccessOption, changeNewMpinFailureOrSuccessOption) || other.changeNewMpinFailureOrSuccessOption == changeNewMpinFailureOrSuccessOption)&&(identical(other.changeVerifyMpinFailureOrSuccessOption, changeVerifyMpinFailureOrSuccessOption) || other.changeVerifyMpinFailureOrSuccessOption == changeVerifyMpinFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,currentMpin,newMpin,changeMpinFailureOrSuccessOption,changeNewMpinFailureOrSuccessOption,changeVerifyMpinFailureOrSuccessOption);

@override
String toString() {
  return 'ChangeMpinState(isSubmitting: $isSubmitting, currentMpin: $currentMpin, newMpin: $newMpin, changeMpinFailureOrSuccessOption: $changeMpinFailureOrSuccessOption, changeNewMpinFailureOrSuccessOption: $changeNewMpinFailureOrSuccessOption, changeVerifyMpinFailureOrSuccessOption: $changeVerifyMpinFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$ChangeMpinStateCopyWith<$Res> implements $ChangeMpinStateCopyWith<$Res> {
  factory _$ChangeMpinStateCopyWith(_ChangeMpinState value, $Res Function(_ChangeMpinState) _then) = __$ChangeMpinStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, String currentMpin, NewMpin newMpin, Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeMpinFailureOrSuccessOption, Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption, Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption
});




}
/// @nodoc
class __$ChangeMpinStateCopyWithImpl<$Res>
    implements _$ChangeMpinStateCopyWith<$Res> {
  __$ChangeMpinStateCopyWithImpl(this._self, this._then);

  final _ChangeMpinState _self;
  final $Res Function(_ChangeMpinState) _then;

/// Create a copy of ChangeMpinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? currentMpin = null,Object? newMpin = null,Object? changeMpinFailureOrSuccessOption = null,Object? changeNewMpinFailureOrSuccessOption = null,Object? changeVerifyMpinFailureOrSuccessOption = null,}) {
  return _then(_ChangeMpinState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,currentMpin: null == currentMpin ? _self.currentMpin : currentMpin // ignore: cast_nullable_to_non_nullable
as String,newMpin: null == newMpin ? _self.newMpin : newMpin // ignore: cast_nullable_to_non_nullable
as NewMpin,changeMpinFailureOrSuccessOption: null == changeMpinFailureOrSuccessOption ? _self.changeMpinFailureOrSuccessOption : changeMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>>,changeNewMpinFailureOrSuccessOption: null == changeNewMpinFailureOrSuccessOption ? _self.changeNewMpinFailureOrSuccessOption : changeNewMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ChangeMpinFailure, Unit>>,changeVerifyMpinFailureOrSuccessOption: null == changeVerifyMpinFailureOrSuccessOption ? _self.changeVerifyMpinFailureOrSuccessOption : changeVerifyMpinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<ChangeMpinFailure, Unit>>,
  ));
}


}

// dart format on
