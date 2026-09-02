// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bio_metric_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BioMetricEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BioMetricEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BioMetricEvent()';
}


}

/// @nodoc
class $BioMetricEventCopyWith<$Res>  {
$BioMetricEventCopyWith(BioMetricEvent _, $Res Function(BioMetricEvent) __);
}


/// Adds pattern-matching-related methods to [BioMetricEvent].
extension BioMetricEventPatterns on BioMetricEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckSupport value)?  checkSupport,TResult Function( _Enable value)?  enable,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckSupport() when checkSupport != null:
return checkSupport(_that);case _Enable() when enable != null:
return enable(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckSupport value)  checkSupport,required TResult Function( _Enable value)  enable,}){
final _that = this;
switch (_that) {
case _CheckSupport():
return checkSupport(_that);case _Enable():
return enable(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckSupport value)?  checkSupport,TResult? Function( _Enable value)?  enable,}){
final _that = this;
switch (_that) {
case _CheckSupport() when checkSupport != null:
return checkSupport(_that);case _Enable() when enable != null:
return enable(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkSupport,TResult Function()?  enable,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckSupport() when checkSupport != null:
return checkSupport();case _Enable() when enable != null:
return enable();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkSupport,required TResult Function()  enable,}) {final _that = this;
switch (_that) {
case _CheckSupport():
return checkSupport();case _Enable():
return enable();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkSupport,TResult? Function()?  enable,}) {final _that = this;
switch (_that) {
case _CheckSupport() when checkSupport != null:
return checkSupport();case _Enable() when enable != null:
return enable();case _:
  return null;

}
}

}

/// @nodoc


class _CheckSupport implements BioMetricEvent {
  const _CheckSupport();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckSupport);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BioMetricEvent.checkSupport()';
}


}




/// @nodoc


class _Enable implements BioMetricEvent {
  const _Enable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Enable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BioMetricEvent.enable()';
}


}




/// @nodoc
mixin _$BioMetricState {

 bool get isBiometricAvailable; bool get isAuthenticating; bool get isBiometricEnabled;
/// Create a copy of BioMetricState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BioMetricStateCopyWith<BioMetricState> get copyWith => _$BioMetricStateCopyWithImpl<BioMetricState>(this as BioMetricState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BioMetricState&&(identical(other.isBiometricAvailable, isBiometricAvailable) || other.isBiometricAvailable == isBiometricAvailable)&&(identical(other.isAuthenticating, isAuthenticating) || other.isAuthenticating == isAuthenticating)&&(identical(other.isBiometricEnabled, isBiometricEnabled) || other.isBiometricEnabled == isBiometricEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,isBiometricAvailable,isAuthenticating,isBiometricEnabled);

@override
String toString() {
  return 'BioMetricState(isBiometricAvailable: $isBiometricAvailable, isAuthenticating: $isAuthenticating, isBiometricEnabled: $isBiometricEnabled)';
}


}

/// @nodoc
abstract mixin class $BioMetricStateCopyWith<$Res>  {
  factory $BioMetricStateCopyWith(BioMetricState value, $Res Function(BioMetricState) _then) = _$BioMetricStateCopyWithImpl;
@useResult
$Res call({
 bool isBiometricAvailable, bool isAuthenticating, bool isBiometricEnabled
});




}
/// @nodoc
class _$BioMetricStateCopyWithImpl<$Res>
    implements $BioMetricStateCopyWith<$Res> {
  _$BioMetricStateCopyWithImpl(this._self, this._then);

  final BioMetricState _self;
  final $Res Function(BioMetricState) _then;

/// Create a copy of BioMetricState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isBiometricAvailable = null,Object? isAuthenticating = null,Object? isBiometricEnabled = null,}) {
  return _then(_self.copyWith(
isBiometricAvailable: null == isBiometricAvailable ? _self.isBiometricAvailable : isBiometricAvailable // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticating: null == isAuthenticating ? _self.isAuthenticating : isAuthenticating // ignore: cast_nullable_to_non_nullable
as bool,isBiometricEnabled: null == isBiometricEnabled ? _self.isBiometricEnabled : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BioMetricState].
extension BioMetricStatePatterns on BioMetricState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BioMetricState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BioMetricState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BioMetricState value)  $default,){
final _that = this;
switch (_that) {
case _BioMetricState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BioMetricState value)?  $default,){
final _that = this;
switch (_that) {
case _BioMetricState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isBiometricAvailable,  bool isAuthenticating,  bool isBiometricEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BioMetricState() when $default != null:
return $default(_that.isBiometricAvailable,_that.isAuthenticating,_that.isBiometricEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isBiometricAvailable,  bool isAuthenticating,  bool isBiometricEnabled)  $default,) {final _that = this;
switch (_that) {
case _BioMetricState():
return $default(_that.isBiometricAvailable,_that.isAuthenticating,_that.isBiometricEnabled);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isBiometricAvailable,  bool isAuthenticating,  bool isBiometricEnabled)?  $default,) {final _that = this;
switch (_that) {
case _BioMetricState() when $default != null:
return $default(_that.isBiometricAvailable,_that.isAuthenticating,_that.isBiometricEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _BioMetricState implements BioMetricState {
  const _BioMetricState({required this.isBiometricAvailable, required this.isAuthenticating, required this.isBiometricEnabled});
  

@override final  bool isBiometricAvailable;
@override final  bool isAuthenticating;
@override final  bool isBiometricEnabled;

/// Create a copy of BioMetricState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BioMetricStateCopyWith<_BioMetricState> get copyWith => __$BioMetricStateCopyWithImpl<_BioMetricState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BioMetricState&&(identical(other.isBiometricAvailable, isBiometricAvailable) || other.isBiometricAvailable == isBiometricAvailable)&&(identical(other.isAuthenticating, isAuthenticating) || other.isAuthenticating == isAuthenticating)&&(identical(other.isBiometricEnabled, isBiometricEnabled) || other.isBiometricEnabled == isBiometricEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,isBiometricAvailable,isAuthenticating,isBiometricEnabled);

@override
String toString() {
  return 'BioMetricState(isBiometricAvailable: $isBiometricAvailable, isAuthenticating: $isAuthenticating, isBiometricEnabled: $isBiometricEnabled)';
}


}

/// @nodoc
abstract mixin class _$BioMetricStateCopyWith<$Res> implements $BioMetricStateCopyWith<$Res> {
  factory _$BioMetricStateCopyWith(_BioMetricState value, $Res Function(_BioMetricState) _then) = __$BioMetricStateCopyWithImpl;
@override @useResult
$Res call({
 bool isBiometricAvailable, bool isAuthenticating, bool isBiometricEnabled
});




}
/// @nodoc
class __$BioMetricStateCopyWithImpl<$Res>
    implements _$BioMetricStateCopyWith<$Res> {
  __$BioMetricStateCopyWithImpl(this._self, this._then);

  final _BioMetricState _self;
  final $Res Function(_BioMetricState) _then;

/// Create a copy of BioMetricState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isBiometricAvailable = null,Object? isAuthenticating = null,Object? isBiometricEnabled = null,}) {
  return _then(_BioMetricState(
isBiometricAvailable: null == isBiometricAvailable ? _self.isBiometricAvailable : isBiometricAvailable // ignore: cast_nullable_to_non_nullable
as bool,isAuthenticating: null == isAuthenticating ? _self.isAuthenticating : isAuthenticating // ignore: cast_nullable_to_non_nullable
as bool,isBiometricEnabled: null == isBiometricEnabled ? _self.isBiometricEnabled : isBiometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
