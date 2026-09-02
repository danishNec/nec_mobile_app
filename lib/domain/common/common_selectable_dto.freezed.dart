// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_selectable_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonSelectableDto {

 String? get message; CommonSelectableData? get data;
/// Create a copy of CommonSelectableDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<CommonSelectableDto> get copyWith => _$CommonSelectableDtoCopyWithImpl<CommonSelectableDto>(this as CommonSelectableDto, _$identity);

  /// Serializes this CommonSelectableDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonSelectableDto&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,data);

@override
String toString() {
  return 'CommonSelectableDto(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $CommonSelectableDtoCopyWith<$Res>  {
  factory $CommonSelectableDtoCopyWith(CommonSelectableDto value, $Res Function(CommonSelectableDto) _then) = _$CommonSelectableDtoCopyWithImpl;
@useResult
$Res call({
 String? message, CommonSelectableData? data
});


$CommonSelectableDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CommonSelectableDtoCopyWithImpl<$Res>
    implements $CommonSelectableDtoCopyWith<$Res> {
  _$CommonSelectableDtoCopyWithImpl(this._self, this._then);

  final CommonSelectableDto _self;
  final $Res Function(CommonSelectableDto) _then;

/// Create a copy of CommonSelectableDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommonSelectableData?,
  ));
}
/// Create a copy of CommonSelectableDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommonSelectableDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommonSelectableDto].
extension CommonSelectableDtoPatterns on CommonSelectableDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonSelectableDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonSelectableDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonSelectableDto value)  $default,){
final _that = this;
switch (_that) {
case _CommonSelectableDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonSelectableDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommonSelectableDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  CommonSelectableData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonSelectableDto() when $default != null:
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  CommonSelectableData? data)  $default,) {final _that = this;
switch (_that) {
case _CommonSelectableDto():
return $default(_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  CommonSelectableData? data)?  $default,) {final _that = this;
switch (_that) {
case _CommonSelectableDto() when $default != null:
return $default(_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonSelectableDto implements CommonSelectableDto {
  const _CommonSelectableDto({this.message, this.data});
  factory _CommonSelectableDto.fromJson(Map<String, dynamic> json) => _$CommonSelectableDtoFromJson(json);

@override final  String? message;
@override final  CommonSelectableData? data;

/// Create a copy of CommonSelectableDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonSelectableDtoCopyWith<_CommonSelectableDto> get copyWith => __$CommonSelectableDtoCopyWithImpl<_CommonSelectableDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonSelectableDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonSelectableDto&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,data);

@override
String toString() {
  return 'CommonSelectableDto(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CommonSelectableDtoCopyWith<$Res> implements $CommonSelectableDtoCopyWith<$Res> {
  factory _$CommonSelectableDtoCopyWith(_CommonSelectableDto value, $Res Function(_CommonSelectableDto) _then) = __$CommonSelectableDtoCopyWithImpl;
@override @useResult
$Res call({
 String? message, CommonSelectableData? data
});


@override $CommonSelectableDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CommonSelectableDtoCopyWithImpl<$Res>
    implements _$CommonSelectableDtoCopyWith<$Res> {
  __$CommonSelectableDtoCopyWithImpl(this._self, this._then);

  final _CommonSelectableDto _self;
  final $Res Function(_CommonSelectableDto) _then;

/// Create a copy of CommonSelectableDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? data = freezed,}) {
  return _then(_CommonSelectableDto(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommonSelectableData?,
  ));
}

/// Create a copy of CommonSelectableDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommonSelectableDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CommonSelectableData {

 List<CommonSelectableItem>? get list;
/// Create a copy of CommonSelectableData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonSelectableDataCopyWith<CommonSelectableData> get copyWith => _$CommonSelectableDataCopyWithImpl<CommonSelectableData>(this as CommonSelectableData, _$identity);

  /// Serializes this CommonSelectableData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonSelectableData&&const DeepCollectionEquality().equals(other.list, list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'CommonSelectableData(list: $list)';
}


}

/// @nodoc
abstract mixin class $CommonSelectableDataCopyWith<$Res>  {
  factory $CommonSelectableDataCopyWith(CommonSelectableData value, $Res Function(CommonSelectableData) _then) = _$CommonSelectableDataCopyWithImpl;
@useResult
$Res call({
 List<CommonSelectableItem>? list
});




}
/// @nodoc
class _$CommonSelectableDataCopyWithImpl<$Res>
    implements $CommonSelectableDataCopyWith<$Res> {
  _$CommonSelectableDataCopyWithImpl(this._self, this._then);

  final CommonSelectableData _self;
  final $Res Function(CommonSelectableData) _then;

/// Create a copy of CommonSelectableData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = freezed,}) {
  return _then(_self.copyWith(
list: freezed == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<CommonSelectableItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonSelectableData].
extension CommonSelectableDataPatterns on CommonSelectableData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonSelectableData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonSelectableData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonSelectableData value)  $default,){
final _that = this;
switch (_that) {
case _CommonSelectableData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonSelectableData value)?  $default,){
final _that = this;
switch (_that) {
case _CommonSelectableData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommonSelectableItem>? list)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonSelectableData() when $default != null:
return $default(_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommonSelectableItem>? list)  $default,) {final _that = this;
switch (_that) {
case _CommonSelectableData():
return $default(_that.list);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommonSelectableItem>? list)?  $default,) {final _that = this;
switch (_that) {
case _CommonSelectableData() when $default != null:
return $default(_that.list);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonSelectableData implements CommonSelectableData {
  const _CommonSelectableData({final  List<CommonSelectableItem>? list}): _list = list;
  factory _CommonSelectableData.fromJson(Map<String, dynamic> json) => _$CommonSelectableDataFromJson(json);

 final  List<CommonSelectableItem>? _list;
@override List<CommonSelectableItem>? get list {
  final value = _list;
  if (value == null) return null;
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CommonSelectableData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonSelectableDataCopyWith<_CommonSelectableData> get copyWith => __$CommonSelectableDataCopyWithImpl<_CommonSelectableData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonSelectableDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonSelectableData&&const DeepCollectionEquality().equals(other._list, _list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'CommonSelectableData(list: $list)';
}


}

/// @nodoc
abstract mixin class _$CommonSelectableDataCopyWith<$Res> implements $CommonSelectableDataCopyWith<$Res> {
  factory _$CommonSelectableDataCopyWith(_CommonSelectableData value, $Res Function(_CommonSelectableData) _then) = __$CommonSelectableDataCopyWithImpl;
@override @useResult
$Res call({
 List<CommonSelectableItem>? list
});




}
/// @nodoc
class __$CommonSelectableDataCopyWithImpl<$Res>
    implements _$CommonSelectableDataCopyWith<$Res> {
  __$CommonSelectableDataCopyWithImpl(this._self, this._then);

  final _CommonSelectableData _self;
  final $Res Function(_CommonSelectableData) _then;

/// Create a copy of CommonSelectableData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = freezed,}) {
  return _then(_CommonSelectableData(
list: freezed == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<CommonSelectableItem>?,
  ));
}


}


/// @nodoc
mixin _$CommonSelectableItem {

 String? get leading; String? get titleName; String? get titleCode; String? get subTitle; String? get subTitleCode; String? get trailingName; String? get trailingCode;
/// Create a copy of CommonSelectableItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<CommonSelectableItem> get copyWith => _$CommonSelectableItemCopyWithImpl<CommonSelectableItem>(this as CommonSelectableItem, _$identity);

  /// Serializes this CommonSelectableItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonSelectableItem&&(identical(other.leading, leading) || other.leading == leading)&&(identical(other.titleName, titleName) || other.titleName == titleName)&&(identical(other.titleCode, titleCode) || other.titleCode == titleCode)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.subTitleCode, subTitleCode) || other.subTitleCode == subTitleCode)&&(identical(other.trailingName, trailingName) || other.trailingName == trailingName)&&(identical(other.trailingCode, trailingCode) || other.trailingCode == trailingCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leading,titleName,titleCode,subTitle,subTitleCode,trailingName,trailingCode);

@override
String toString() {
  return 'CommonSelectableItem(leading: $leading, titleName: $titleName, titleCode: $titleCode, subTitle: $subTitle, subTitleCode: $subTitleCode, trailingName: $trailingName, trailingCode: $trailingCode)';
}


}

/// @nodoc
abstract mixin class $CommonSelectableItemCopyWith<$Res>  {
  factory $CommonSelectableItemCopyWith(CommonSelectableItem value, $Res Function(CommonSelectableItem) _then) = _$CommonSelectableItemCopyWithImpl;
@useResult
$Res call({
 String? leading, String? titleName, String? titleCode, String? subTitle, String? subTitleCode, String? trailingName, String? trailingCode
});




}
/// @nodoc
class _$CommonSelectableItemCopyWithImpl<$Res>
    implements $CommonSelectableItemCopyWith<$Res> {
  _$CommonSelectableItemCopyWithImpl(this._self, this._then);

  final CommonSelectableItem _self;
  final $Res Function(CommonSelectableItem) _then;

/// Create a copy of CommonSelectableItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leading = freezed,Object? titleName = freezed,Object? titleCode = freezed,Object? subTitle = freezed,Object? subTitleCode = freezed,Object? trailingName = freezed,Object? trailingCode = freezed,}) {
  return _then(_self.copyWith(
leading: freezed == leading ? _self.leading : leading // ignore: cast_nullable_to_non_nullable
as String?,titleName: freezed == titleName ? _self.titleName : titleName // ignore: cast_nullable_to_non_nullable
as String?,titleCode: freezed == titleCode ? _self.titleCode : titleCode // ignore: cast_nullable_to_non_nullable
as String?,subTitle: freezed == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String?,subTitleCode: freezed == subTitleCode ? _self.subTitleCode : subTitleCode // ignore: cast_nullable_to_non_nullable
as String?,trailingName: freezed == trailingName ? _self.trailingName : trailingName // ignore: cast_nullable_to_non_nullable
as String?,trailingCode: freezed == trailingCode ? _self.trailingCode : trailingCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonSelectableItem].
extension CommonSelectableItemPatterns on CommonSelectableItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonSelectableItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonSelectableItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonSelectableItem value)  $default,){
final _that = this;
switch (_that) {
case _CommonSelectableItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonSelectableItem value)?  $default,){
final _that = this;
switch (_that) {
case _CommonSelectableItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? leading,  String? titleName,  String? titleCode,  String? subTitle,  String? subTitleCode,  String? trailingName,  String? trailingCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonSelectableItem() when $default != null:
return $default(_that.leading,_that.titleName,_that.titleCode,_that.subTitle,_that.subTitleCode,_that.trailingName,_that.trailingCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? leading,  String? titleName,  String? titleCode,  String? subTitle,  String? subTitleCode,  String? trailingName,  String? trailingCode)  $default,) {final _that = this;
switch (_that) {
case _CommonSelectableItem():
return $default(_that.leading,_that.titleName,_that.titleCode,_that.subTitle,_that.subTitleCode,_that.trailingName,_that.trailingCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? leading,  String? titleName,  String? titleCode,  String? subTitle,  String? subTitleCode,  String? trailingName,  String? trailingCode)?  $default,) {final _that = this;
switch (_that) {
case _CommonSelectableItem() when $default != null:
return $default(_that.leading,_that.titleName,_that.titleCode,_that.subTitle,_that.subTitleCode,_that.trailingName,_that.trailingCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonSelectableItem implements CommonSelectableItem {
  const _CommonSelectableItem({this.leading, this.titleName, this.titleCode, this.subTitle, this.subTitleCode, this.trailingName, this.trailingCode});
  factory _CommonSelectableItem.fromJson(Map<String, dynamic> json) => _$CommonSelectableItemFromJson(json);

@override final  String? leading;
@override final  String? titleName;
@override final  String? titleCode;
@override final  String? subTitle;
@override final  String? subTitleCode;
@override final  String? trailingName;
@override final  String? trailingCode;

/// Create a copy of CommonSelectableItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonSelectableItemCopyWith<_CommonSelectableItem> get copyWith => __$CommonSelectableItemCopyWithImpl<_CommonSelectableItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonSelectableItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonSelectableItem&&(identical(other.leading, leading) || other.leading == leading)&&(identical(other.titleName, titleName) || other.titleName == titleName)&&(identical(other.titleCode, titleCode) || other.titleCode == titleCode)&&(identical(other.subTitle, subTitle) || other.subTitle == subTitle)&&(identical(other.subTitleCode, subTitleCode) || other.subTitleCode == subTitleCode)&&(identical(other.trailingName, trailingName) || other.trailingName == trailingName)&&(identical(other.trailingCode, trailingCode) || other.trailingCode == trailingCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leading,titleName,titleCode,subTitle,subTitleCode,trailingName,trailingCode);

@override
String toString() {
  return 'CommonSelectableItem(leading: $leading, titleName: $titleName, titleCode: $titleCode, subTitle: $subTitle, subTitleCode: $subTitleCode, trailingName: $trailingName, trailingCode: $trailingCode)';
}


}

/// @nodoc
abstract mixin class _$CommonSelectableItemCopyWith<$Res> implements $CommonSelectableItemCopyWith<$Res> {
  factory _$CommonSelectableItemCopyWith(_CommonSelectableItem value, $Res Function(_CommonSelectableItem) _then) = __$CommonSelectableItemCopyWithImpl;
@override @useResult
$Res call({
 String? leading, String? titleName, String? titleCode, String? subTitle, String? subTitleCode, String? trailingName, String? trailingCode
});




}
/// @nodoc
class __$CommonSelectableItemCopyWithImpl<$Res>
    implements _$CommonSelectableItemCopyWith<$Res> {
  __$CommonSelectableItemCopyWithImpl(this._self, this._then);

  final _CommonSelectableItem _self;
  final $Res Function(_CommonSelectableItem) _then;

/// Create a copy of CommonSelectableItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leading = freezed,Object? titleName = freezed,Object? titleCode = freezed,Object? subTitle = freezed,Object? subTitleCode = freezed,Object? trailingName = freezed,Object? trailingCode = freezed,}) {
  return _then(_CommonSelectableItem(
leading: freezed == leading ? _self.leading : leading // ignore: cast_nullable_to_non_nullable
as String?,titleName: freezed == titleName ? _self.titleName : titleName // ignore: cast_nullable_to_non_nullable
as String?,titleCode: freezed == titleCode ? _self.titleCode : titleCode // ignore: cast_nullable_to_non_nullable
as String?,subTitle: freezed == subTitle ? _self.subTitle : subTitle // ignore: cast_nullable_to_non_nullable
as String?,subTitleCode: freezed == subTitleCode ? _self.subTitleCode : subTitleCode // ignore: cast_nullable_to_non_nullable
as String?,trailingName: freezed == trailingName ? _self.trailingName : trailingName // ignore: cast_nullable_to_non_nullable
as String?,trailingCode: freezed == trailingCode ? _self.trailingCode : trailingCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
