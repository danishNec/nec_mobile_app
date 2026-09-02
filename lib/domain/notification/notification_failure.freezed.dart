// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationFailure()';
}


}

/// @nodoc
class $NotificationFailureCopyWith<$Res>  {
$NotificationFailureCopyWith(NotificationFailure _, $Res Function(NotificationFailure) __);
}


/// Adds pattern-matching-related methods to [NotificationFailure].
extension NotificationFailurePatterns on NotificationFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnableToGetNotifications value)?  unableToGetNotifications,TResult Function( ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnableToGetNotifications() when unableToGetNotifications != null:
return unableToGetNotifications(_that);case ServerError() when serverError != null:
return serverError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnableToGetNotifications value)  unableToGetNotifications,required TResult Function( ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case UnableToGetNotifications():
return unableToGetNotifications(_that);case ServerError():
return serverError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnableToGetNotifications value)?  unableToGetNotifications,TResult? Function( ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case UnableToGetNotifications() when unableToGetNotifications != null:
return unableToGetNotifications(_that);case ServerError() when serverError != null:
return serverError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unableToGetNotifications,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnableToGetNotifications() when unableToGetNotifications != null:
return unableToGetNotifications();case ServerError() when serverError != null:
return serverError();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unableToGetNotifications,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case UnableToGetNotifications():
return unableToGetNotifications();case ServerError():
return serverError();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unableToGetNotifications,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case UnableToGetNotifications() when unableToGetNotifications != null:
return unableToGetNotifications();case ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class UnableToGetNotifications implements NotificationFailure {
  const UnableToGetNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnableToGetNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationFailure.unableToGetNotifications()';
}


}




/// @nodoc


class ServerError implements NotificationFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationFailure.serverError()';
}


}




// dart format on
