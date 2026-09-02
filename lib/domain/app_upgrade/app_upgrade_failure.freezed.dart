// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_upgrade_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppUpgradeFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpgradeFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeFailure()';
}


}

/// @nodoc
class $AppUpgradeFailureCopyWith<$Res>  {
$AppUpgradeFailureCopyWith(AppUpgradeFailure _, $Res Function(AppUpgradeFailure) __);
}


/// Adds pattern-matching-related methods to [AppUpgradeFailure].
extension AppUpgradeFailurePatterns on AppUpgradeFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ServerError value)?  serverError,TResult Function( _VersionParseError value)?  versionParseError,TResult Function( _Unexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError(_that);case _VersionParseError() when versionParseError != null:
return versionParseError(_that);case _Unexpected() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ServerError value)  serverError,required TResult Function( _VersionParseError value)  versionParseError,required TResult Function( _Unexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case _ServerError():
return serverError(_that);case _VersionParseError():
return versionParseError(_that);case _Unexpected():
return unexpected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ServerError value)?  serverError,TResult? Function( _VersionParseError value)?  versionParseError,TResult? Function( _Unexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError(_that);case _VersionParseError() when versionParseError != null:
return versionParseError(_that);case _Unexpected() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  serverError,TResult Function()?  versionParseError,TResult Function()?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError();case _VersionParseError() when versionParseError != null:
return versionParseError();case _Unexpected() when unexpected != null:
return unexpected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  serverError,required TResult Function()  versionParseError,required TResult Function()  unexpected,}) {final _that = this;
switch (_that) {
case _ServerError():
return serverError();case _VersionParseError():
return versionParseError();case _Unexpected():
return unexpected();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  serverError,TResult? Function()?  versionParseError,TResult? Function()?  unexpected,}) {final _that = this;
switch (_that) {
case _ServerError() when serverError != null:
return serverError();case _VersionParseError() when versionParseError != null:
return versionParseError();case _Unexpected() when unexpected != null:
return unexpected();case _:
  return null;

}
}

}

/// @nodoc


class _ServerError implements AppUpgradeFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeFailure.serverError()';
}


}




/// @nodoc


class _VersionParseError implements AppUpgradeFailure {
  const _VersionParseError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VersionParseError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeFailure.versionParseError()';
}


}




/// @nodoc


class _Unexpected implements AppUpgradeFailure {
  const _Unexpected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unexpected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeFailure.unexpected()';
}


}




// dart format on
