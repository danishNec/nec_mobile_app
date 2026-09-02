// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_upgrade_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppUpgradeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpgradeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeEvent()';
}


}

/// @nodoc
class $AppUpgradeEventCopyWith<$Res>  {
$AppUpgradeEventCopyWith(AppUpgradeEvent _, $Res Function(AppUpgradeEvent) __);
}


/// Adds pattern-matching-related methods to [AppUpgradeEvent].
extension AppUpgradeEventPatterns on AppUpgradeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckForUpdate value)?  checkForUpdate,TResult Function( _OpenStore value)?  openStore,TResult Function( _Dismissed value)?  dismissed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckForUpdate() when checkForUpdate != null:
return checkForUpdate(_that);case _OpenStore() when openStore != null:
return openStore(_that);case _Dismissed() when dismissed != null:
return dismissed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckForUpdate value)  checkForUpdate,required TResult Function( _OpenStore value)  openStore,required TResult Function( _Dismissed value)  dismissed,}){
final _that = this;
switch (_that) {
case _CheckForUpdate():
return checkForUpdate(_that);case _OpenStore():
return openStore(_that);case _Dismissed():
return dismissed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckForUpdate value)?  checkForUpdate,TResult? Function( _OpenStore value)?  openStore,TResult? Function( _Dismissed value)?  dismissed,}){
final _that = this;
switch (_that) {
case _CheckForUpdate() when checkForUpdate != null:
return checkForUpdate(_that);case _OpenStore() when openStore != null:
return openStore(_that);case _Dismissed() when dismissed != null:
return dismissed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkForUpdate,TResult Function( String storeUrl)?  openStore,TResult Function()?  dismissed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckForUpdate() when checkForUpdate != null:
return checkForUpdate();case _OpenStore() when openStore != null:
return openStore(_that.storeUrl);case _Dismissed() when dismissed != null:
return dismissed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkForUpdate,required TResult Function( String storeUrl)  openStore,required TResult Function()  dismissed,}) {final _that = this;
switch (_that) {
case _CheckForUpdate():
return checkForUpdate();case _OpenStore():
return openStore(_that.storeUrl);case _Dismissed():
return dismissed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkForUpdate,TResult? Function( String storeUrl)?  openStore,TResult? Function()?  dismissed,}) {final _that = this;
switch (_that) {
case _CheckForUpdate() when checkForUpdate != null:
return checkForUpdate();case _OpenStore() when openStore != null:
return openStore(_that.storeUrl);case _Dismissed() when dismissed != null:
return dismissed();case _:
  return null;

}
}

}

/// @nodoc


class _CheckForUpdate implements AppUpgradeEvent {
  const _CheckForUpdate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckForUpdate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeEvent.checkForUpdate()';
}


}




/// @nodoc


class _OpenStore implements AppUpgradeEvent {
  const _OpenStore(this.storeUrl);
  

 final  String storeUrl;

/// Create a copy of AppUpgradeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenStoreCopyWith<_OpenStore> get copyWith => __$OpenStoreCopyWithImpl<_OpenStore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenStore&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}


@override
int get hashCode => Object.hash(runtimeType,storeUrl);

@override
String toString() {
  return 'AppUpgradeEvent.openStore(storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class _$OpenStoreCopyWith<$Res> implements $AppUpgradeEventCopyWith<$Res> {
  factory _$OpenStoreCopyWith(_OpenStore value, $Res Function(_OpenStore) _then) = __$OpenStoreCopyWithImpl;
@useResult
$Res call({
 String storeUrl
});




}
/// @nodoc
class __$OpenStoreCopyWithImpl<$Res>
    implements _$OpenStoreCopyWith<$Res> {
  __$OpenStoreCopyWithImpl(this._self, this._then);

  final _OpenStore _self;
  final $Res Function(_OpenStore) _then;

/// Create a copy of AppUpgradeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? storeUrl = null,}) {
  return _then(_OpenStore(
null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Dismissed implements AppUpgradeEvent {
  const _Dismissed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dismissed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppUpgradeEvent.dismissed()';
}


}




/// @nodoc
mixin _$AppUpgradeState {

 bool get isChecking; bool get isOpeningStore;/// none()  — check not yet triggered
/// some(left)  — check failed
/// some(right) — check succeeded; inspect [AppVersionInfo.upgradeType]
 Option<Either<AppUpgradeFailure, AppVersionInfo>> get checkFailureOrSuccessOption;/// none()  — store-open not yet triggered
/// some(left)  — could not launch the store URL
/// some(right) — store launched successfully
 Option<Either<AppUpgradeFailure, Unit>> get openStoreFailureOrSuccessOption;
/// Create a copy of AppUpgradeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUpgradeStateCopyWith<AppUpgradeState> get copyWith => _$AppUpgradeStateCopyWithImpl<AppUpgradeState>(this as AppUpgradeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUpgradeState&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.isOpeningStore, isOpeningStore) || other.isOpeningStore == isOpeningStore)&&(identical(other.checkFailureOrSuccessOption, checkFailureOrSuccessOption) || other.checkFailureOrSuccessOption == checkFailureOrSuccessOption)&&(identical(other.openStoreFailureOrSuccessOption, openStoreFailureOrSuccessOption) || other.openStoreFailureOrSuccessOption == openStoreFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isChecking,isOpeningStore,checkFailureOrSuccessOption,openStoreFailureOrSuccessOption);

@override
String toString() {
  return 'AppUpgradeState(isChecking: $isChecking, isOpeningStore: $isOpeningStore, checkFailureOrSuccessOption: $checkFailureOrSuccessOption, openStoreFailureOrSuccessOption: $openStoreFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $AppUpgradeStateCopyWith<$Res>  {
  factory $AppUpgradeStateCopyWith(AppUpgradeState value, $Res Function(AppUpgradeState) _then) = _$AppUpgradeStateCopyWithImpl;
@useResult
$Res call({
 bool isChecking, bool isOpeningStore, Option<Either<AppUpgradeFailure, AppVersionInfo>> checkFailureOrSuccessOption, Option<Either<AppUpgradeFailure, Unit>> openStoreFailureOrSuccessOption
});




}
/// @nodoc
class _$AppUpgradeStateCopyWithImpl<$Res>
    implements $AppUpgradeStateCopyWith<$Res> {
  _$AppUpgradeStateCopyWithImpl(this._self, this._then);

  final AppUpgradeState _self;
  final $Res Function(AppUpgradeState) _then;

/// Create a copy of AppUpgradeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isChecking = null,Object? isOpeningStore = null,Object? checkFailureOrSuccessOption = null,Object? openStoreFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,isOpeningStore: null == isOpeningStore ? _self.isOpeningStore : isOpeningStore // ignore: cast_nullable_to_non_nullable
as bool,checkFailureOrSuccessOption: null == checkFailureOrSuccessOption ? _self.checkFailureOrSuccessOption : checkFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppUpgradeFailure, AppVersionInfo>>,openStoreFailureOrSuccessOption: null == openStoreFailureOrSuccessOption ? _self.openStoreFailureOrSuccessOption : openStoreFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppUpgradeFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [AppUpgradeState].
extension AppUpgradeStatePatterns on AppUpgradeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUpgradeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUpgradeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUpgradeState value)  $default,){
final _that = this;
switch (_that) {
case _AppUpgradeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUpgradeState value)?  $default,){
final _that = this;
switch (_that) {
case _AppUpgradeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isChecking,  bool isOpeningStore,  Option<Either<AppUpgradeFailure, AppVersionInfo>> checkFailureOrSuccessOption,  Option<Either<AppUpgradeFailure, Unit>> openStoreFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUpgradeState() when $default != null:
return $default(_that.isChecking,_that.isOpeningStore,_that.checkFailureOrSuccessOption,_that.openStoreFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isChecking,  bool isOpeningStore,  Option<Either<AppUpgradeFailure, AppVersionInfo>> checkFailureOrSuccessOption,  Option<Either<AppUpgradeFailure, Unit>> openStoreFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _AppUpgradeState():
return $default(_that.isChecking,_that.isOpeningStore,_that.checkFailureOrSuccessOption,_that.openStoreFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isChecking,  bool isOpeningStore,  Option<Either<AppUpgradeFailure, AppVersionInfo>> checkFailureOrSuccessOption,  Option<Either<AppUpgradeFailure, Unit>> openStoreFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _AppUpgradeState() when $default != null:
return $default(_that.isChecking,_that.isOpeningStore,_that.checkFailureOrSuccessOption,_that.openStoreFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _AppUpgradeState implements AppUpgradeState {
  const _AppUpgradeState({required this.isChecking, required this.isOpeningStore, required this.checkFailureOrSuccessOption, required this.openStoreFailureOrSuccessOption});
  

@override final  bool isChecking;
@override final  bool isOpeningStore;
/// none()  — check not yet triggered
/// some(left)  — check failed
/// some(right) — check succeeded; inspect [AppVersionInfo.upgradeType]
@override final  Option<Either<AppUpgradeFailure, AppVersionInfo>> checkFailureOrSuccessOption;
/// none()  — store-open not yet triggered
/// some(left)  — could not launch the store URL
/// some(right) — store launched successfully
@override final  Option<Either<AppUpgradeFailure, Unit>> openStoreFailureOrSuccessOption;

/// Create a copy of AppUpgradeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUpgradeStateCopyWith<_AppUpgradeState> get copyWith => __$AppUpgradeStateCopyWithImpl<_AppUpgradeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUpgradeState&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.isOpeningStore, isOpeningStore) || other.isOpeningStore == isOpeningStore)&&(identical(other.checkFailureOrSuccessOption, checkFailureOrSuccessOption) || other.checkFailureOrSuccessOption == checkFailureOrSuccessOption)&&(identical(other.openStoreFailureOrSuccessOption, openStoreFailureOrSuccessOption) || other.openStoreFailureOrSuccessOption == openStoreFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isChecking,isOpeningStore,checkFailureOrSuccessOption,openStoreFailureOrSuccessOption);

@override
String toString() {
  return 'AppUpgradeState(isChecking: $isChecking, isOpeningStore: $isOpeningStore, checkFailureOrSuccessOption: $checkFailureOrSuccessOption, openStoreFailureOrSuccessOption: $openStoreFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$AppUpgradeStateCopyWith<$Res> implements $AppUpgradeStateCopyWith<$Res> {
  factory _$AppUpgradeStateCopyWith(_AppUpgradeState value, $Res Function(_AppUpgradeState) _then) = __$AppUpgradeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isChecking, bool isOpeningStore, Option<Either<AppUpgradeFailure, AppVersionInfo>> checkFailureOrSuccessOption, Option<Either<AppUpgradeFailure, Unit>> openStoreFailureOrSuccessOption
});




}
/// @nodoc
class __$AppUpgradeStateCopyWithImpl<$Res>
    implements _$AppUpgradeStateCopyWith<$Res> {
  __$AppUpgradeStateCopyWithImpl(this._self, this._then);

  final _AppUpgradeState _self;
  final $Res Function(_AppUpgradeState) _then;

/// Create a copy of AppUpgradeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isChecking = null,Object? isOpeningStore = null,Object? checkFailureOrSuccessOption = null,Object? openStoreFailureOrSuccessOption = null,}) {
  return _then(_AppUpgradeState(
isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,isOpeningStore: null == isOpeningStore ? _self.isOpeningStore : isOpeningStore // ignore: cast_nullable_to_non_nullable
as bool,checkFailureOrSuccessOption: null == checkFailureOrSuccessOption ? _self.checkFailureOrSuccessOption : checkFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppUpgradeFailure, AppVersionInfo>>,openStoreFailureOrSuccessOption: null == openStoreFailureOrSuccessOption ? _self.openStoreFailureOrSuccessOption : openStoreFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppUpgradeFailure, Unit>>,
  ));
}


}

// dart format on
