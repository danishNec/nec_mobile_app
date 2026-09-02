// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {

 int? get pageIndex; bool? get isLoadMore;
/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEventCopyWith<NotificationEvent> get copyWith => _$NotificationEventCopyWithImpl<NotificationEvent>(this as NotificationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex,isLoadMore);

@override
String toString() {
  return 'NotificationEvent(pageIndex: $pageIndex, isLoadMore: $isLoadMore)';
}


}

/// @nodoc
abstract mixin class $NotificationEventCopyWith<$Res>  {
  factory $NotificationEventCopyWith(NotificationEvent value, $Res Function(NotificationEvent) _then) = _$NotificationEventCopyWithImpl;
@useResult
$Res call({
 int? pageIndex, bool? isLoadMore
});




}
/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._self, this._then);

  final NotificationEvent _self;
  final $Res Function(NotificationEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageIndex = freezed,Object? isLoadMore = freezed,}) {
  return _then(_self.copyWith(
pageIndex: freezed == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int?,isLoadMore: freezed == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetNotifications value)?  getNotifications,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetNotifications value)  getNotifications,}){
final _that = this;
switch (_that) {
case _GetNotifications():
return getNotifications(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetNotifications value)?  getNotifications,}){
final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? pageIndex,  bool? isLoadMore)?  getNotifications,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that.pageIndex,_that.isLoadMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? pageIndex,  bool? isLoadMore)  getNotifications,}) {final _that = this;
switch (_that) {
case _GetNotifications():
return getNotifications(_that.pageIndex,_that.isLoadMore);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? pageIndex,  bool? isLoadMore)?  getNotifications,}) {final _that = this;
switch (_that) {
case _GetNotifications() when getNotifications != null:
return getNotifications(_that.pageIndex,_that.isLoadMore);case _:
  return null;

}
}

}

/// @nodoc


class _GetNotifications implements NotificationEvent {
  const _GetNotifications({this.pageIndex, this.isLoadMore});
  

@override final  int? pageIndex;
@override final  bool? isLoadMore;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetNotificationsCopyWith<_GetNotifications> get copyWith => __$GetNotificationsCopyWithImpl<_GetNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNotifications&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex,isLoadMore);

@override
String toString() {
  return 'NotificationEvent.getNotifications(pageIndex: $pageIndex, isLoadMore: $isLoadMore)';
}


}

/// @nodoc
abstract mixin class _$GetNotificationsCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory _$GetNotificationsCopyWith(_GetNotifications value, $Res Function(_GetNotifications) _then) = __$GetNotificationsCopyWithImpl;
@override @useResult
$Res call({
 int? pageIndex, bool? isLoadMore
});




}
/// @nodoc
class __$GetNotificationsCopyWithImpl<$Res>
    implements _$GetNotificationsCopyWith<$Res> {
  __$GetNotificationsCopyWithImpl(this._self, this._then);

  final _GetNotifications _self;
  final $Res Function(_GetNotifications) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageIndex = freezed,Object? isLoadMore = freezed,}) {
  return _then(_GetNotifications(
pageIndex: freezed == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int?,isLoadMore: freezed == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$NotificationState {

 bool get isLoading; bool get isLoadingMore; int get pageIndex; bool get hasReachedMax; NotificationDto? get notificationDto; Option<Either<NotificationFailure, NotificationDto>> get notificationSuccessOrFailureOption;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationStateCopyWith<NotificationState> get copyWith => _$NotificationStateCopyWithImpl<NotificationState>(this as NotificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.notificationDto, notificationDto) || other.notificationDto == notificationDto)&&(identical(other.notificationSuccessOrFailureOption, notificationSuccessOrFailureOption) || other.notificationSuccessOrFailureOption == notificationSuccessOrFailureOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadingMore,pageIndex,hasReachedMax,notificationDto,notificationSuccessOrFailureOption);

@override
String toString() {
  return 'NotificationState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, pageIndex: $pageIndex, hasReachedMax: $hasReachedMax, notificationDto: $notificationDto, notificationSuccessOrFailureOption: $notificationSuccessOrFailureOption)';
}


}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res>  {
  factory $NotificationStateCopyWith(NotificationState value, $Res Function(NotificationState) _then) = _$NotificationStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoadingMore, int pageIndex, bool hasReachedMax, NotificationDto? notificationDto, Option<Either<NotificationFailure, NotificationDto>> notificationSuccessOrFailureOption
});


$NotificationDtoCopyWith<$Res>? get notificationDto;

}
/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoadingMore = null,Object? pageIndex = null,Object? hasReachedMax = null,Object? notificationDto = freezed,Object? notificationSuccessOrFailureOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,notificationDto: freezed == notificationDto ? _self.notificationDto : notificationDto // ignore: cast_nullable_to_non_nullable
as NotificationDto?,notificationSuccessOrFailureOption: null == notificationSuccessOrFailureOption ? _self.notificationSuccessOrFailureOption : notificationSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<NotificationFailure, NotificationDto>>,
  ));
}
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDtoCopyWith<$Res>? get notificationDto {
    if (_self.notificationDto == null) {
    return null;
  }

  return $NotificationDtoCopyWith<$Res>(_self.notificationDto!, (value) {
    return _then(_self.copyWith(notificationDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadingMore,  int pageIndex,  bool hasReachedMax,  NotificationDto? notificationDto,  Option<Either<NotificationFailure, NotificationDto>> notificationSuccessOrFailureOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.isLoading,_that.isLoadingMore,_that.pageIndex,_that.hasReachedMax,_that.notificationDto,_that.notificationSuccessOrFailureOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadingMore,  int pageIndex,  bool hasReachedMax,  NotificationDto? notificationDto,  Option<Either<NotificationFailure, NotificationDto>> notificationSuccessOrFailureOption)  $default,) {final _that = this;
switch (_that) {
case _NotificationState():
return $default(_that.isLoading,_that.isLoadingMore,_that.pageIndex,_that.hasReachedMax,_that.notificationDto,_that.notificationSuccessOrFailureOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isLoadingMore,  int pageIndex,  bool hasReachedMax,  NotificationDto? notificationDto,  Option<Either<NotificationFailure, NotificationDto>> notificationSuccessOrFailureOption)?  $default,) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.isLoading,_that.isLoadingMore,_that.pageIndex,_that.hasReachedMax,_that.notificationDto,_that.notificationSuccessOrFailureOption);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationState implements NotificationState {
  const _NotificationState({required this.isLoading, required this.isLoadingMore, required this.pageIndex, required this.hasReachedMax, this.notificationDto, required this.notificationSuccessOrFailureOption});
  

@override final  bool isLoading;
@override final  bool isLoadingMore;
@override final  int pageIndex;
@override final  bool hasReachedMax;
@override final  NotificationDto? notificationDto;
@override final  Option<Either<NotificationFailure, NotificationDto>> notificationSuccessOrFailureOption;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationStateCopyWith<_NotificationState> get copyWith => __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.notificationDto, notificationDto) || other.notificationDto == notificationDto)&&(identical(other.notificationSuccessOrFailureOption, notificationSuccessOrFailureOption) || other.notificationSuccessOrFailureOption == notificationSuccessOrFailureOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoadingMore,pageIndex,hasReachedMax,notificationDto,notificationSuccessOrFailureOption);

@override
String toString() {
  return 'NotificationState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, pageIndex: $pageIndex, hasReachedMax: $hasReachedMax, notificationDto: $notificationDto, notificationSuccessOrFailureOption: $notificationSuccessOrFailureOption)';
}


}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(_NotificationState value, $Res Function(_NotificationState) _then) = __$NotificationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoadingMore, int pageIndex, bool hasReachedMax, NotificationDto? notificationDto, Option<Either<NotificationFailure, NotificationDto>> notificationSuccessOrFailureOption
});


@override $NotificationDtoCopyWith<$Res>? get notificationDto;

}
/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoadingMore = null,Object? pageIndex = null,Object? hasReachedMax = null,Object? notificationDto = freezed,Object? notificationSuccessOrFailureOption = null,}) {
  return _then(_NotificationState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,notificationDto: freezed == notificationDto ? _self.notificationDto : notificationDto // ignore: cast_nullable_to_non_nullable
as NotificationDto?,notificationSuccessOrFailureOption: null == notificationSuccessOrFailureOption ? _self.notificationSuccessOrFailureOption : notificationSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<NotificationFailure, NotificationDto>>,
  ));
}

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDtoCopyWith<$Res>? get notificationDto {
    if (_self.notificationDto == null) {
    return null;
  }

  return $NotificationDtoCopyWith<$Res>(_self.notificationDto!, (value) {
    return _then(_self.copyWith(notificationDto: value));
  });
}
}

// dart format on
