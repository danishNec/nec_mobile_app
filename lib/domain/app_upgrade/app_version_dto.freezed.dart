// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppVersionDto {

@JsonKey(name: 'statusCode') int? get statusCode;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'data') AppVersionData? get data;
/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionDtoCopyWith<AppVersionDto> get copyWith => _$AppVersionDtoCopyWithImpl<AppVersionDto>(this as AppVersionDto, _$identity);

  /// Serializes this AppVersionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,data);

@override
String toString() {
  return 'AppVersionDto(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $AppVersionDtoCopyWith<$Res>  {
  factory $AppVersionDtoCopyWith(AppVersionDto value, $Res Function(AppVersionDto) _then) = _$AppVersionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'statusCode') int? statusCode,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') AppVersionData? data
});


$AppVersionDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AppVersionDtoCopyWithImpl<$Res>
    implements $AppVersionDtoCopyWith<$Res> {
  _$AppVersionDtoCopyWithImpl(this._self, this._then);

  final AppVersionDto _self;
  final $Res Function(AppVersionDto) _then;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppVersionData?,
  ));
}
/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppVersionDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AppVersionDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppVersionDto].
extension AppVersionDtoPatterns on AppVersionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionDto value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionDto value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'statusCode')  int? statusCode, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  AppVersionData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.statusCode,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'statusCode')  int? statusCode, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  AppVersionData? data)  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto():
return $default(_that.statusCode,_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'statusCode')  int? statusCode, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'data')  AppVersionData? data)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionDto() when $default != null:
return $default(_that.statusCode,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionDto implements AppVersionDto {
  const _AppVersionDto({@JsonKey(name: 'statusCode') this.statusCode, @JsonKey(name: 'message') this.message, @JsonKey(name: 'data') this.data});
  factory _AppVersionDto.fromJson(Map<String, dynamic> json) => _$AppVersionDtoFromJson(json);

@override@JsonKey(name: 'statusCode') final  int? statusCode;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'data') final  AppVersionData? data;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionDtoCopyWith<_AppVersionDto> get copyWith => __$AppVersionDtoCopyWithImpl<_AppVersionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppVersionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,data);

@override
String toString() {
  return 'AppVersionDto(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AppVersionDtoCopyWith<$Res> implements $AppVersionDtoCopyWith<$Res> {
  factory _$AppVersionDtoCopyWith(_AppVersionDto value, $Res Function(_AppVersionDto) _then) = __$AppVersionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'statusCode') int? statusCode,@JsonKey(name: 'message') String? message,@JsonKey(name: 'data') AppVersionData? data
});


@override $AppVersionDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AppVersionDtoCopyWithImpl<$Res>
    implements _$AppVersionDtoCopyWith<$Res> {
  __$AppVersionDtoCopyWithImpl(this._self, this._then);

  final _AppVersionDto _self;
  final $Res Function(_AppVersionDto) _then;

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_AppVersionDto(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AppVersionData?,
  ));
}

/// Create a copy of AppVersionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppVersionDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AppVersionDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AppVersionData {

@JsonKey(name: 'latestVersion') String get latestVersion;@JsonKey(name: 'minimumVersion') String get minimumVersion;@JsonKey(name: 'isForceUpdate') bool get isForceUpdate;@JsonKey(name: 'updateTitle') String? get updateTitle;@JsonKey(name: 'updateMessage') String? get updateMessage;@JsonKey(name: 'changelogItems') List<String> get changelogItems;@JsonKey(name: 'androidStoreUrl') String? get androidStoreUrl;@JsonKey(name: 'iosStoreUrl') String? get iosStoreUrl;
/// Create a copy of AppVersionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionDataCopyWith<AppVersionData> get copyWith => _$AppVersionDataCopyWithImpl<AppVersionData>(this as AppVersionData, _$identity);

  /// Serializes this AppVersionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionData&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.minimumVersion, minimumVersion) || other.minimumVersion == minimumVersion)&&(identical(other.isForceUpdate, isForceUpdate) || other.isForceUpdate == isForceUpdate)&&(identical(other.updateTitle, updateTitle) || other.updateTitle == updateTitle)&&(identical(other.updateMessage, updateMessage) || other.updateMessage == updateMessage)&&const DeepCollectionEquality().equals(other.changelogItems, changelogItems)&&(identical(other.androidStoreUrl, androidStoreUrl) || other.androidStoreUrl == androidStoreUrl)&&(identical(other.iosStoreUrl, iosStoreUrl) || other.iosStoreUrl == iosStoreUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latestVersion,minimumVersion,isForceUpdate,updateTitle,updateMessage,const DeepCollectionEquality().hash(changelogItems),androidStoreUrl,iosStoreUrl);

@override
String toString() {
  return 'AppVersionData(latestVersion: $latestVersion, minimumVersion: $minimumVersion, isForceUpdate: $isForceUpdate, updateTitle: $updateTitle, updateMessage: $updateMessage, changelogItems: $changelogItems, androidStoreUrl: $androidStoreUrl, iosStoreUrl: $iosStoreUrl)';
}


}

/// @nodoc
abstract mixin class $AppVersionDataCopyWith<$Res>  {
  factory $AppVersionDataCopyWith(AppVersionData value, $Res Function(AppVersionData) _then) = _$AppVersionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'latestVersion') String latestVersion,@JsonKey(name: 'minimumVersion') String minimumVersion,@JsonKey(name: 'isForceUpdate') bool isForceUpdate,@JsonKey(name: 'updateTitle') String? updateTitle,@JsonKey(name: 'updateMessage') String? updateMessage,@JsonKey(name: 'changelogItems') List<String> changelogItems,@JsonKey(name: 'androidStoreUrl') String? androidStoreUrl,@JsonKey(name: 'iosStoreUrl') String? iosStoreUrl
});




}
/// @nodoc
class _$AppVersionDataCopyWithImpl<$Res>
    implements $AppVersionDataCopyWith<$Res> {
  _$AppVersionDataCopyWithImpl(this._self, this._then);

  final AppVersionData _self;
  final $Res Function(AppVersionData) _then;

/// Create a copy of AppVersionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latestVersion = null,Object? minimumVersion = null,Object? isForceUpdate = null,Object? updateTitle = freezed,Object? updateMessage = freezed,Object? changelogItems = null,Object? androidStoreUrl = freezed,Object? iosStoreUrl = freezed,}) {
  return _then(_self.copyWith(
latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,minimumVersion: null == minimumVersion ? _self.minimumVersion : minimumVersion // ignore: cast_nullable_to_non_nullable
as String,isForceUpdate: null == isForceUpdate ? _self.isForceUpdate : isForceUpdate // ignore: cast_nullable_to_non_nullable
as bool,updateTitle: freezed == updateTitle ? _self.updateTitle : updateTitle // ignore: cast_nullable_to_non_nullable
as String?,updateMessage: freezed == updateMessage ? _self.updateMessage : updateMessage // ignore: cast_nullable_to_non_nullable
as String?,changelogItems: null == changelogItems ? _self.changelogItems : changelogItems // ignore: cast_nullable_to_non_nullable
as List<String>,androidStoreUrl: freezed == androidStoreUrl ? _self.androidStoreUrl : androidStoreUrl // ignore: cast_nullable_to_non_nullable
as String?,iosStoreUrl: freezed == iosStoreUrl ? _self.iosStoreUrl : iosStoreUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionData].
extension AppVersionDataPatterns on AppVersionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionData value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionData value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'latestVersion')  String latestVersion, @JsonKey(name: 'minimumVersion')  String minimumVersion, @JsonKey(name: 'isForceUpdate')  bool isForceUpdate, @JsonKey(name: 'updateTitle')  String? updateTitle, @JsonKey(name: 'updateMessage')  String? updateMessage, @JsonKey(name: 'changelogItems')  List<String> changelogItems, @JsonKey(name: 'androidStoreUrl')  String? androidStoreUrl, @JsonKey(name: 'iosStoreUrl')  String? iosStoreUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionData() when $default != null:
return $default(_that.latestVersion,_that.minimumVersion,_that.isForceUpdate,_that.updateTitle,_that.updateMessage,_that.changelogItems,_that.androidStoreUrl,_that.iosStoreUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'latestVersion')  String latestVersion, @JsonKey(name: 'minimumVersion')  String minimumVersion, @JsonKey(name: 'isForceUpdate')  bool isForceUpdate, @JsonKey(name: 'updateTitle')  String? updateTitle, @JsonKey(name: 'updateMessage')  String? updateMessage, @JsonKey(name: 'changelogItems')  List<String> changelogItems, @JsonKey(name: 'androidStoreUrl')  String? androidStoreUrl, @JsonKey(name: 'iosStoreUrl')  String? iosStoreUrl)  $default,) {final _that = this;
switch (_that) {
case _AppVersionData():
return $default(_that.latestVersion,_that.minimumVersion,_that.isForceUpdate,_that.updateTitle,_that.updateMessage,_that.changelogItems,_that.androidStoreUrl,_that.iosStoreUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'latestVersion')  String latestVersion, @JsonKey(name: 'minimumVersion')  String minimumVersion, @JsonKey(name: 'isForceUpdate')  bool isForceUpdate, @JsonKey(name: 'updateTitle')  String? updateTitle, @JsonKey(name: 'updateMessage')  String? updateMessage, @JsonKey(name: 'changelogItems')  List<String> changelogItems, @JsonKey(name: 'androidStoreUrl')  String? androidStoreUrl, @JsonKey(name: 'iosStoreUrl')  String? iosStoreUrl)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionData() when $default != null:
return $default(_that.latestVersion,_that.minimumVersion,_that.isForceUpdate,_that.updateTitle,_that.updateMessage,_that.changelogItems,_that.androidStoreUrl,_that.iosStoreUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionData implements AppVersionData {
  const _AppVersionData({@JsonKey(name: 'latestVersion') required this.latestVersion, @JsonKey(name: 'minimumVersion') required this.minimumVersion, @JsonKey(name: 'isForceUpdate') this.isForceUpdate = false, @JsonKey(name: 'updateTitle') this.updateTitle, @JsonKey(name: 'updateMessage') this.updateMessage, @JsonKey(name: 'changelogItems') final  List<String> changelogItems = const [], @JsonKey(name: 'androidStoreUrl') this.androidStoreUrl, @JsonKey(name: 'iosStoreUrl') this.iosStoreUrl}): _changelogItems = changelogItems;
  factory _AppVersionData.fromJson(Map<String, dynamic> json) => _$AppVersionDataFromJson(json);

@override@JsonKey(name: 'latestVersion') final  String latestVersion;
@override@JsonKey(name: 'minimumVersion') final  String minimumVersion;
@override@JsonKey(name: 'isForceUpdate') final  bool isForceUpdate;
@override@JsonKey(name: 'updateTitle') final  String? updateTitle;
@override@JsonKey(name: 'updateMessage') final  String? updateMessage;
 final  List<String> _changelogItems;
@override@JsonKey(name: 'changelogItems') List<String> get changelogItems {
  if (_changelogItems is EqualUnmodifiableListView) return _changelogItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changelogItems);
}

@override@JsonKey(name: 'androidStoreUrl') final  String? androidStoreUrl;
@override@JsonKey(name: 'iosStoreUrl') final  String? iosStoreUrl;

/// Create a copy of AppVersionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionDataCopyWith<_AppVersionData> get copyWith => __$AppVersionDataCopyWithImpl<_AppVersionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppVersionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionData&&(identical(other.latestVersion, latestVersion) || other.latestVersion == latestVersion)&&(identical(other.minimumVersion, minimumVersion) || other.minimumVersion == minimumVersion)&&(identical(other.isForceUpdate, isForceUpdate) || other.isForceUpdate == isForceUpdate)&&(identical(other.updateTitle, updateTitle) || other.updateTitle == updateTitle)&&(identical(other.updateMessage, updateMessage) || other.updateMessage == updateMessage)&&const DeepCollectionEquality().equals(other._changelogItems, _changelogItems)&&(identical(other.androidStoreUrl, androidStoreUrl) || other.androidStoreUrl == androidStoreUrl)&&(identical(other.iosStoreUrl, iosStoreUrl) || other.iosStoreUrl == iosStoreUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latestVersion,minimumVersion,isForceUpdate,updateTitle,updateMessage,const DeepCollectionEquality().hash(_changelogItems),androidStoreUrl,iosStoreUrl);

@override
String toString() {
  return 'AppVersionData(latestVersion: $latestVersion, minimumVersion: $minimumVersion, isForceUpdate: $isForceUpdate, updateTitle: $updateTitle, updateMessage: $updateMessage, changelogItems: $changelogItems, androidStoreUrl: $androidStoreUrl, iosStoreUrl: $iosStoreUrl)';
}


}

/// @nodoc
abstract mixin class _$AppVersionDataCopyWith<$Res> implements $AppVersionDataCopyWith<$Res> {
  factory _$AppVersionDataCopyWith(_AppVersionData value, $Res Function(_AppVersionData) _then) = __$AppVersionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'latestVersion') String latestVersion,@JsonKey(name: 'minimumVersion') String minimumVersion,@JsonKey(name: 'isForceUpdate') bool isForceUpdate,@JsonKey(name: 'updateTitle') String? updateTitle,@JsonKey(name: 'updateMessage') String? updateMessage,@JsonKey(name: 'changelogItems') List<String> changelogItems,@JsonKey(name: 'androidStoreUrl') String? androidStoreUrl,@JsonKey(name: 'iosStoreUrl') String? iosStoreUrl
});




}
/// @nodoc
class __$AppVersionDataCopyWithImpl<$Res>
    implements _$AppVersionDataCopyWith<$Res> {
  __$AppVersionDataCopyWithImpl(this._self, this._then);

  final _AppVersionData _self;
  final $Res Function(_AppVersionData) _then;

/// Create a copy of AppVersionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latestVersion = null,Object? minimumVersion = null,Object? isForceUpdate = null,Object? updateTitle = freezed,Object? updateMessage = freezed,Object? changelogItems = null,Object? androidStoreUrl = freezed,Object? iosStoreUrl = freezed,}) {
  return _then(_AppVersionData(
latestVersion: null == latestVersion ? _self.latestVersion : latestVersion // ignore: cast_nullable_to_non_nullable
as String,minimumVersion: null == minimumVersion ? _self.minimumVersion : minimumVersion // ignore: cast_nullable_to_non_nullable
as String,isForceUpdate: null == isForceUpdate ? _self.isForceUpdate : isForceUpdate // ignore: cast_nullable_to_non_nullable
as bool,updateTitle: freezed == updateTitle ? _self.updateTitle : updateTitle // ignore: cast_nullable_to_non_nullable
as String?,updateMessage: freezed == updateMessage ? _self.updateMessage : updateMessage // ignore: cast_nullable_to_non_nullable
as String?,changelogItems: null == changelogItems ? _self._changelogItems : changelogItems // ignore: cast_nullable_to_non_nullable
as List<String>,androidStoreUrl: freezed == androidStoreUrl ? _self.androidStoreUrl : androidStoreUrl // ignore: cast_nullable_to_non_nullable
as String?,iosStoreUrl: freezed == iosStoreUrl ? _self.iosStoreUrl : iosStoreUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
