// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_temporary_session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummaryTemporarySessionDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;
/// Create a copy of SummaryTemporarySessionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryTemporarySessionDtoCopyWith<SummaryTemporarySessionDto> get copyWith => _$SummaryTemporarySessionDtoCopyWithImpl<SummaryTemporarySessionDto>(this as SummaryTemporarySessionDto, _$identity);

  /// Serializes this SummaryTemporarySessionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryTemporarySessionDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'SummaryTemporarySessionDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $SummaryTemporarySessionDtoCopyWith<$Res>  {
  factory $SummaryTemporarySessionDtoCopyWith(SummaryTemporarySessionDto value, $Res Function(SummaryTemporarySessionDto) _then) = _$SummaryTemporarySessionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$SummaryTemporarySessionDtoCopyWithImpl<$Res>
    implements $SummaryTemporarySessionDtoCopyWith<$Res> {
  _$SummaryTemporarySessionDtoCopyWithImpl(this._self, this._then);

  final SummaryTemporarySessionDto _self;
  final $Res Function(SummaryTemporarySessionDto) _then;

/// Create a copy of SummaryTemporarySessionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of SummaryTemporarySessionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SummaryTemporarySessionDto].
extension SummaryTemporarySessionDtoPatterns on SummaryTemporarySessionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryTemporarySessionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryTemporarySessionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryTemporarySessionDto value)  $default,){
final _that = this;
switch (_that) {
case _SummaryTemporarySessionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryTemporarySessionDto value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryTemporarySessionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryTemporarySessionDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
switch (_that) {
case _SummaryTemporarySessionDto():
return $default(_that.success,_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _SummaryTemporarySessionDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryTemporarySessionDto implements SummaryTemporarySessionDto {
  const _SummaryTemporarySessionDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data});
  factory _SummaryTemporarySessionDto.fromJson(Map<String, dynamic> json) => _$SummaryTemporarySessionDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of SummaryTemporarySessionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryTemporarySessionDtoCopyWith<_SummaryTemporarySessionDto> get copyWith => __$SummaryTemporarySessionDtoCopyWithImpl<_SummaryTemporarySessionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryTemporarySessionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryTemporarySessionDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'SummaryTemporarySessionDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SummaryTemporarySessionDtoCopyWith<$Res> implements $SummaryTemporarySessionDtoCopyWith<$Res> {
  factory _$SummaryTemporarySessionDtoCopyWith(_SummaryTemporarySessionDto value, $Res Function(_SummaryTemporarySessionDto) _then) = __$SummaryTemporarySessionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$SummaryTemporarySessionDtoCopyWithImpl<$Res>
    implements _$SummaryTemporarySessionDtoCopyWith<$Res> {
  __$SummaryTemporarySessionDtoCopyWithImpl(this._self, this._then);

  final _SummaryTemporarySessionDto _self;
  final $Res Function(_SummaryTemporarySessionDto) _then;

/// Create a copy of SummaryTemporarySessionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_SummaryTemporarySessionDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of SummaryTemporarySessionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: "is_maker") bool? get isMaker;@JsonKey(name: "app_transaction_reference") String? get appTransactionReference;@JsonKey(name: "p_g_url") String? get pGUrl;@JsonKey(name: "e_id") String? get eId;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.isMaker, isMaker) || other.isMaker == isMaker)&&(identical(other.appTransactionReference, appTransactionReference) || other.appTransactionReference == appTransactionReference)&&(identical(other.pGUrl, pGUrl) || other.pGUrl == pGUrl)&&(identical(other.eId, eId) || other.eId == eId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isMaker,appTransactionReference,pGUrl,eId);

@override
String toString() {
  return 'Data(isMaker: $isMaker, appTransactionReference: $appTransactionReference, pGUrl: $pGUrl, eId: $eId)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "is_maker") bool? isMaker,@JsonKey(name: "app_transaction_reference") String? appTransactionReference,@JsonKey(name: "p_g_url") String? pGUrl,@JsonKey(name: "e_id") String? eId
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isMaker = freezed,Object? appTransactionReference = freezed,Object? pGUrl = freezed,Object? eId = freezed,}) {
  return _then(_self.copyWith(
isMaker: freezed == isMaker ? _self.isMaker : isMaker // ignore: cast_nullable_to_non_nullable
as bool?,appTransactionReference: freezed == appTransactionReference ? _self.appTransactionReference : appTransactionReference // ignore: cast_nullable_to_non_nullable
as String?,pGUrl: freezed == pGUrl ? _self.pGUrl : pGUrl // ignore: cast_nullable_to_non_nullable
as String?,eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "is_maker")  bool? isMaker, @JsonKey(name: "app_transaction_reference")  String? appTransactionReference, @JsonKey(name: "p_g_url")  String? pGUrl, @JsonKey(name: "e_id")  String? eId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.isMaker,_that.appTransactionReference,_that.pGUrl,_that.eId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "is_maker")  bool? isMaker, @JsonKey(name: "app_transaction_reference")  String? appTransactionReference, @JsonKey(name: "p_g_url")  String? pGUrl, @JsonKey(name: "e_id")  String? eId)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.isMaker,_that.appTransactionReference,_that.pGUrl,_that.eId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "is_maker")  bool? isMaker, @JsonKey(name: "app_transaction_reference")  String? appTransactionReference, @JsonKey(name: "p_g_url")  String? pGUrl, @JsonKey(name: "e_id")  String? eId)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.isMaker,_that.appTransactionReference,_that.pGUrl,_that.eId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "is_maker") this.isMaker, @JsonKey(name: "app_transaction_reference") this.appTransactionReference, @JsonKey(name: "p_g_url") this.pGUrl, @JsonKey(name: "e_id") this.eId});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "is_maker") final  bool? isMaker;
@override@JsonKey(name: "app_transaction_reference") final  String? appTransactionReference;
@override@JsonKey(name: "p_g_url") final  String? pGUrl;
@override@JsonKey(name: "e_id") final  String? eId;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.isMaker, isMaker) || other.isMaker == isMaker)&&(identical(other.appTransactionReference, appTransactionReference) || other.appTransactionReference == appTransactionReference)&&(identical(other.pGUrl, pGUrl) || other.pGUrl == pGUrl)&&(identical(other.eId, eId) || other.eId == eId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isMaker,appTransactionReference,pGUrl,eId);

@override
String toString() {
  return 'Data(isMaker: $isMaker, appTransactionReference: $appTransactionReference, pGUrl: $pGUrl, eId: $eId)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "is_maker") bool? isMaker,@JsonKey(name: "app_transaction_reference") String? appTransactionReference,@JsonKey(name: "p_g_url") String? pGUrl,@JsonKey(name: "e_id") String? eId
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isMaker = freezed,Object? appTransactionReference = freezed,Object? pGUrl = freezed,Object? eId = freezed,}) {
  return _then(_Data(
isMaker: freezed == isMaker ? _self.isMaker : isMaker // ignore: cast_nullable_to_non_nullable
as bool?,appTransactionReference: freezed == appTransactionReference ? _self.appTransactionReference : appTransactionReference // ignore: cast_nullable_to_non_nullable
as String?,pGUrl: freezed == pGUrl ? _self.pGUrl : pGUrl // ignore: cast_nullable_to_non_nullable
as String?,eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
