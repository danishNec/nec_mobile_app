// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppVersionInfo {

 AppUpgradeType get upgradeType; String get currentVersion; String get latestVersion; String? get updateTitle; String? get updateMessage; List<String> get changelogItems; String get storeUrl;
/// Create a copy of AppVersionInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionInfoCopyWith<AppVersionInfo> get copyWith => _$AppVersionInfoCopyWithImpl<AppVersionInfo>(this as AppVersionInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionInfo&&(identical(other.upgradeType, upgradeType) || other.upgradeType == upgradeType)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.updateTitle, updateTitle) || other.updateTitle == updateTitle)&&(identical(other.updateMessage, updateMessage) || other.updateMessage == updateMessage)&&const DeepCollectionEquality().equals(other.changelogItems, changelogItems)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}


@override
int get hashCode => Object.hash(runtimeType,upgradeType,currentVersion,latestVersion,updateTitle,updateMessage,const DeepCollectionEquality().hash(changelogItems),storeUrl);

@override
String toString() {
  return 'AppVersionInfo(upgradeType: $upgradeType, currentVersion: $currentVersion, latestVersion: $latestVersion, updateTitle: $updateTitle, updateMessage: $updateMessage, changelogItems: $changelogItems, storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class $AppVersionInfoCopyWith<$Res>  {
  factory $AppVersionInfoCopyWith(AppVersionInfo value, $Res Function(AppVersionInfo) _then) = _$AppVersionInfoCopyWithImpl;
@useResult
$Res call({
 AppUpgradeType upgradeType, String currentVersion, String latestVersion, String? updateTitle, String? updateMessage, List<String> changelogItems, String storeUrl
});




}
/// @nodoc
class _$AppVersionInfoCopyWithImpl<$Res>
    implements $AppVersionInfoCopyWith<$Res> {
  _$AppVersionInfoCopyWithImpl(this._self, this._then);

  final AppVersionInfo _self;
  final $Res Function(AppVersionInfo) _then;

/// Create a copy of AppVersionInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? upgradeType = null,Object? currentVersion = null,Object? latestVersion = null,Object? updateTitle = freezed,Object? updateMessage = freezed,Object? changelogItems = null,Object? storeUrl = null,}) {
  return _then(_self.copyWith(
upgradeType: null == upgradeType ? _self.upgradeType : upgradeType // ignore: cast_nullable_to_non_nullable
as AppUpgradeType,currentVersion: null == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,updateTitle: freezed == updateTitle ? _self.updateTitle : updateTitle // ignore: cast_nullable_to_non_nullable
as String?,updateMessage: freezed == updateMessage ? _self.updateMessage : updateMessage // ignore: cast_nullable_to_non_nullable
as String?,changelogItems: null == changelogItems ? _self.changelogItems : changelogItems // ignore: cast_nullable_to_non_nullable
as List<String>,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionInfo].
extension AppVersionInfoPatterns on AppVersionInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionInfo value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionInfo value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppUpgradeType upgradeType,  String currentVersion,  String latestVersion,  String? updateTitle,  String? updateMessage,  List<String> changelogItems,  String storeUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionInfo() when $default != null:
return $default(_that.upgradeType,_that.currentVersion,_that.latestVersion,_that.updateTitle,_that.updateMessage,_that.changelogItems,_that.storeUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppUpgradeType upgradeType,  String currentVersion,  String latestVersion,  String? updateTitle,  String? updateMessage,  List<String> changelogItems,  String storeUrl)  $default,) {final _that = this;
switch (_that) {
case _AppVersionInfo():
return $default(_that.upgradeType,_that.currentVersion,_that.latestVersion,_that.updateTitle,_that.updateMessage,_that.changelogItems,_that.storeUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppUpgradeType upgradeType,  String currentVersion,  String latestVersion,  String? updateTitle,  String? updateMessage,  List<String> changelogItems,  String storeUrl)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionInfo() when $default != null:
return $default(_that.upgradeType,_that.currentVersion,_that.latestVersion,_that.updateTitle,_that.updateMessage,_that.changelogItems,_that.storeUrl);case _:
  return null;

}
}

}

/// @nodoc


class _AppVersionInfo implements AppVersionInfo {
  const _AppVersionInfo({required this.upgradeType, required this.currentVersion, required this.latestVersion, this.updateTitle, this.updateMessage, final  List<String> changelogItems = const [], required this.storeUrl}): _changelogItems = changelogItems;
  

@override final  AppUpgradeType upgradeType;
@override final  String currentVersion;
@override final  String latestVersion;
@override final  String? updateTitle;
@override final  String? updateMessage;
 final  List<String> _changelogItems;
@override@JsonKey() List<String> get changelogItems {
  if (_changelogItems is EqualUnmodifiableListView) return _changelogItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changelogItems);
}

@override final  String storeUrl;

/// Create a copy of AppVersionInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionInfoCopyWith<_AppVersionInfo> get copyWith => __$AppVersionInfoCopyWithImpl<_AppVersionInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionInfo&&(identical(other.upgradeType, upgradeType) || other.upgradeType == upgradeType)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.updateTitle, updateTitle) || other.updateTitle == updateTitle)&&(identical(other.updateMessage, updateMessage) || other.updateMessage == updateMessage)&&const DeepCollectionEquality().equals(other._changelogItems, _changelogItems)&&(identical(other.storeUrl, storeUrl) || other.storeUrl == storeUrl));
}


@override
int get hashCode => Object.hash(runtimeType,upgradeType,currentVersion,latestVersion,updateTitle,updateMessage,const DeepCollectionEquality().hash(_changelogItems),storeUrl);

@override
String toString() {
  return 'AppVersionInfo(upgradeType: $upgradeType, currentVersion: $currentVersion, latestVersion: $latestVersion, updateTitle: $updateTitle, updateMessage: $updateMessage, changelogItems: $changelogItems, storeUrl: $storeUrl)';
}


}

/// @nodoc
abstract mixin class _$AppVersionInfoCopyWith<$Res> implements $AppVersionInfoCopyWith<$Res> {
  factory _$AppVersionInfoCopyWith(_AppVersionInfo value, $Res Function(_AppVersionInfo) _then) = __$AppVersionInfoCopyWithImpl;
@override @useResult
$Res call({
 AppUpgradeType upgradeType, String currentVersion, String latestVersion, String? updateTitle, String? updateMessage, List<String> changelogItems, String storeUrl
});




}
/// @nodoc
class __$AppVersionInfoCopyWithImpl<$Res>
    implements _$AppVersionInfoCopyWith<$Res> {
  __$AppVersionInfoCopyWithImpl(this._self, this._then);

  final _AppVersionInfo _self;
  final $Res Function(_AppVersionInfo) _then;

/// Create a copy of AppVersionInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? upgradeType = null,Object? currentVersion = null,Object? latestVersion = null,Object? updateTitle = freezed,Object? updateMessage = freezed,Object? changelogItems = null,Object? storeUrl = null,}) {
  return _then(_AppVersionInfo(
upgradeType: null == upgradeType ? _self.upgradeType : upgradeType // ignore: cast_nullable_to_non_nullable
as AppUpgradeType,currentVersion: null == currentVersion ? _self.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,updateTitle: freezed == updateTitle ? _self.updateTitle : updateTitle // ignore: cast_nullable_to_non_nullable
as String?,updateMessage: freezed == updateMessage ? _self.updateMessage : updateMessage // ignore: cast_nullable_to_non_nullable
as String?,changelogItems: null == changelogItems ? _self._changelogItems : changelogItems // ignore: cast_nullable_to_non_nullable
as List<String>,storeUrl: null == storeUrl ? _self.storeUrl : storeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
