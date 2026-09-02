// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent()';
}


}

/// @nodoc
class $SplashEventCopyWith<$Res>  {
$SplashEventCopyWith(SplashEvent _, $Res Function(SplashEvent) __);
}


/// Adds pattern-matching-related methods to [SplashEvent].
extension SplashEventPatterns on SplashEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckAuthentication value)?  checkAuthentication,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckAuthentication() when checkAuthentication != null:
return checkAuthentication(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckAuthentication value)  checkAuthentication,}){
final _that = this;
switch (_that) {
case _CheckAuthentication():
return checkAuthentication(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckAuthentication value)?  checkAuthentication,}){
final _that = this;
switch (_that) {
case _CheckAuthentication() when checkAuthentication != null:
return checkAuthentication(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkAuthentication,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckAuthentication() when checkAuthentication != null:
return checkAuthentication();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkAuthentication,}) {final _that = this;
switch (_that) {
case _CheckAuthentication():
return checkAuthentication();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkAuthentication,}) {final _that = this;
switch (_that) {
case _CheckAuthentication() when checkAuthentication != null:
return checkAuthentication();case _:
  return null;

}
}

}

/// @nodoc


class _CheckAuthentication implements SplashEvent {
  const _CheckAuthentication();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAuthentication);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashEvent.checkAuthentication()';
}


}




/// @nodoc
mixin _$SplashState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingProgress value)?  loadingProgress,TResult Function( _LoadedSuccessOnBoarding value)?  loadedSuccessOnBoarding,TResult Function( _LoadedSuccessLogin value)?  loadedSuccessLogin,TResult Function( _LoadedSuccessSetMpin value)?  loadedSuccessSetMpin,TResult Function( _LoadedSuccessMain value)?  loadedSuccessMain,TResult Function( _LoadedFailure value)?  loadedFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingProgress() when loadingProgress != null:
return loadingProgress(_that);case _LoadedSuccessOnBoarding() when loadedSuccessOnBoarding != null:
return loadedSuccessOnBoarding(_that);case _LoadedSuccessLogin() when loadedSuccessLogin != null:
return loadedSuccessLogin(_that);case _LoadedSuccessSetMpin() when loadedSuccessSetMpin != null:
return loadedSuccessSetMpin(_that);case _LoadedSuccessMain() when loadedSuccessMain != null:
return loadedSuccessMain(_that);case _LoadedFailure() when loadedFailure != null:
return loadedFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingProgress value)  loadingProgress,required TResult Function( _LoadedSuccessOnBoarding value)  loadedSuccessOnBoarding,required TResult Function( _LoadedSuccessLogin value)  loadedSuccessLogin,required TResult Function( _LoadedSuccessSetMpin value)  loadedSuccessSetMpin,required TResult Function( _LoadedSuccessMain value)  loadedSuccessMain,required TResult Function( _LoadedFailure value)  loadedFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingProgress():
return loadingProgress(_that);case _LoadedSuccessOnBoarding():
return loadedSuccessOnBoarding(_that);case _LoadedSuccessLogin():
return loadedSuccessLogin(_that);case _LoadedSuccessSetMpin():
return loadedSuccessSetMpin(_that);case _LoadedSuccessMain():
return loadedSuccessMain(_that);case _LoadedFailure():
return loadedFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingProgress value)?  loadingProgress,TResult? Function( _LoadedSuccessOnBoarding value)?  loadedSuccessOnBoarding,TResult? Function( _LoadedSuccessLogin value)?  loadedSuccessLogin,TResult? Function( _LoadedSuccessSetMpin value)?  loadedSuccessSetMpin,TResult? Function( _LoadedSuccessMain value)?  loadedSuccessMain,TResult? Function( _LoadedFailure value)?  loadedFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingProgress() when loadingProgress != null:
return loadingProgress(_that);case _LoadedSuccessOnBoarding() when loadedSuccessOnBoarding != null:
return loadedSuccessOnBoarding(_that);case _LoadedSuccessLogin() when loadedSuccessLogin != null:
return loadedSuccessLogin(_that);case _LoadedSuccessSetMpin() when loadedSuccessSetMpin != null:
return loadedSuccessSetMpin(_that);case _LoadedSuccessMain() when loadedSuccessMain != null:
return loadedSuccessMain(_that);case _LoadedFailure() when loadedFailure != null:
return loadedFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingProgress,TResult Function()?  loadedSuccessOnBoarding,TResult Function()?  loadedSuccessLogin,TResult Function()?  loadedSuccessSetMpin,TResult Function()?  loadedSuccessMain,TResult Function( String message)?  loadedFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingProgress() when loadingProgress != null:
return loadingProgress();case _LoadedSuccessOnBoarding() when loadedSuccessOnBoarding != null:
return loadedSuccessOnBoarding();case _LoadedSuccessLogin() when loadedSuccessLogin != null:
return loadedSuccessLogin();case _LoadedSuccessSetMpin() when loadedSuccessSetMpin != null:
return loadedSuccessSetMpin();case _LoadedSuccessMain() when loadedSuccessMain != null:
return loadedSuccessMain();case _LoadedFailure() when loadedFailure != null:
return loadedFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingProgress,required TResult Function()  loadedSuccessOnBoarding,required TResult Function()  loadedSuccessLogin,required TResult Function()  loadedSuccessSetMpin,required TResult Function()  loadedSuccessMain,required TResult Function( String message)  loadedFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingProgress():
return loadingProgress();case _LoadedSuccessOnBoarding():
return loadedSuccessOnBoarding();case _LoadedSuccessLogin():
return loadedSuccessLogin();case _LoadedSuccessSetMpin():
return loadedSuccessSetMpin();case _LoadedSuccessMain():
return loadedSuccessMain();case _LoadedFailure():
return loadedFailure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingProgress,TResult? Function()?  loadedSuccessOnBoarding,TResult? Function()?  loadedSuccessLogin,TResult? Function()?  loadedSuccessSetMpin,TResult? Function()?  loadedSuccessMain,TResult? Function( String message)?  loadedFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingProgress() when loadingProgress != null:
return loadingProgress();case _LoadedSuccessOnBoarding() when loadedSuccessOnBoarding != null:
return loadedSuccessOnBoarding();case _LoadedSuccessLogin() when loadedSuccessLogin != null:
return loadedSuccessLogin();case _LoadedSuccessSetMpin() when loadedSuccessSetMpin != null:
return loadedSuccessSetMpin();case _LoadedSuccessMain() when loadedSuccessMain != null:
return loadedSuccessMain();case _LoadedFailure() when loadedFailure != null:
return loadedFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SplashState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.initial()';
}


}




/// @nodoc


class _LoadingProgress implements SplashState {
  const _LoadingProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loadingProgress()';
}


}




/// @nodoc


class _LoadedSuccessOnBoarding implements SplashState {
  const _LoadedSuccessOnBoarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedSuccessOnBoarding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loadedSuccessOnBoarding()';
}


}




/// @nodoc


class _LoadedSuccessLogin implements SplashState {
  const _LoadedSuccessLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedSuccessLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loadedSuccessLogin()';
}


}




/// @nodoc


class _LoadedSuccessSetMpin implements SplashState {
  const _LoadedSuccessSetMpin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedSuccessSetMpin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loadedSuccessSetMpin()';
}


}




/// @nodoc


class _LoadedSuccessMain implements SplashState {
  const _LoadedSuccessMain();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedSuccessMain);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loadedSuccessMain()';
}


}




/// @nodoc


class _LoadedFailure implements SplashState {
  const _LoadedFailure(this.message);
  

 final  String message;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedFailureCopyWith<_LoadedFailure> get copyWith => __$LoadedFailureCopyWithImpl<_LoadedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SplashState.loadedFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoadedFailureCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$LoadedFailureCopyWith(_LoadedFailure value, $Res Function(_LoadedFailure) _then) = __$LoadedFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LoadedFailureCopyWithImpl<$Res>
    implements _$LoadedFailureCopyWith<$Res> {
  __$LoadedFailureCopyWithImpl(this._self, this._then);

  final _LoadedFailure _self;
  final $Res Function(_LoadedFailure) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LoadedFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
