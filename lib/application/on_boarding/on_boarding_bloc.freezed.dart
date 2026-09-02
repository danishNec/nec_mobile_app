// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnBoardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent()';
}


}

/// @nodoc
class $OnBoardingEventCopyWith<$Res>  {
$OnBoardingEventCopyWith(OnBoardingEvent _, $Res Function(OnBoardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnBoardingEvent].
extension OnBoardingEventPatterns on OnBoardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadOnBoarding value)?  loadOnBoarding,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadOnBoarding() when loadOnBoarding != null:
return loadOnBoarding(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadOnBoarding value)  loadOnBoarding,}){
final _that = this;
switch (_that) {
case _LoadOnBoarding():
return loadOnBoarding(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadOnBoarding value)?  loadOnBoarding,}){
final _that = this;
switch (_that) {
case _LoadOnBoarding() when loadOnBoarding != null:
return loadOnBoarding(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadOnBoarding,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadOnBoarding() when loadOnBoarding != null:
return loadOnBoarding();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadOnBoarding,}) {final _that = this;
switch (_that) {
case _LoadOnBoarding():
return loadOnBoarding();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadOnBoarding,}) {final _that = this;
switch (_that) {
case _LoadOnBoarding() when loadOnBoarding != null:
return loadOnBoarding();case _:
  return null;

}
}

}

/// @nodoc


class _LoadOnBoarding implements OnBoardingEvent {
  const _LoadOnBoarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadOnBoarding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingEvent.loadOnBoarding()';
}


}




/// @nodoc
mixin _$OnBoardingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnBoardingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingState()';
}


}

/// @nodoc
class $OnBoardingStateCopyWith<$Res>  {
$OnBoardingStateCopyWith(OnBoardingState _, $Res Function(OnBoardingState) __);
}


/// Adds pattern-matching-related methods to [OnBoardingState].
extension OnBoardingStatePatterns on OnBoardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadingProgress value)?  loadingProgress,TResult Function( _LoadSuccessOnBoarding value)?  loadSuccessOnBoarding,TResult Function( _LoadFailure value)?  loadFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingProgress() when loadingProgress != null:
return loadingProgress(_that);case _LoadSuccessOnBoarding() when loadSuccessOnBoarding != null:
return loadSuccessOnBoarding(_that);case _LoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadingProgress value)  loadingProgress,required TResult Function( _LoadSuccessOnBoarding value)  loadSuccessOnBoarding,required TResult Function( _LoadFailure value)  loadFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadingProgress():
return loadingProgress(_that);case _LoadSuccessOnBoarding():
return loadSuccessOnBoarding(_that);case _LoadFailure():
return loadFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadingProgress value)?  loadingProgress,TResult? Function( _LoadSuccessOnBoarding value)?  loadSuccessOnBoarding,TResult? Function( _LoadFailure value)?  loadFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadingProgress() when loadingProgress != null:
return loadingProgress(_that);case _LoadSuccessOnBoarding() when loadSuccessOnBoarding != null:
return loadSuccessOnBoarding(_that);case _LoadFailure() when loadFailure != null:
return loadFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingProgress,TResult Function()?  loadSuccessOnBoarding,TResult Function( String message)?  loadFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingProgress() when loadingProgress != null:
return loadingProgress();case _LoadSuccessOnBoarding() when loadSuccessOnBoarding != null:
return loadSuccessOnBoarding();case _LoadFailure() when loadFailure != null:
return loadFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingProgress,required TResult Function()  loadSuccessOnBoarding,required TResult Function( String message)  loadFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadingProgress():
return loadingProgress();case _LoadSuccessOnBoarding():
return loadSuccessOnBoarding();case _LoadFailure():
return loadFailure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingProgress,TResult? Function()?  loadSuccessOnBoarding,TResult? Function( String message)?  loadFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadingProgress() when loadingProgress != null:
return loadingProgress();case _LoadSuccessOnBoarding() when loadSuccessOnBoarding != null:
return loadSuccessOnBoarding();case _LoadFailure() when loadFailure != null:
return loadFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OnBoardingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingState.initial()';
}


}




/// @nodoc


class _LoadingProgress implements OnBoardingState {
  const _LoadingProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingState.loadingProgress()';
}


}




/// @nodoc


class _LoadSuccessOnBoarding implements OnBoardingState {
  const _LoadSuccessOnBoarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadSuccessOnBoarding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnBoardingState.loadSuccessOnBoarding()';
}


}




/// @nodoc


class _LoadFailure implements OnBoardingState {
  const _LoadFailure(this.message);
  

 final  String message;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OnBoardingState.loadFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoadFailureCopyWith<$Res> implements $OnBoardingStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) _then) = __$LoadFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(this._self, this._then);

  final _LoadFailure _self;
  final $Res Function(_LoadFailure) _then;

/// Create a copy of OnBoardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LoadFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
