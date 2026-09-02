// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_beneficiary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionHistoryBeneficiaryDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;
/// Create a copy of TransactionHistoryBeneficiaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryBeneficiaryDtoCopyWith<TransactionHistoryBeneficiaryDto> get copyWith => _$TransactionHistoryBeneficiaryDtoCopyWithImpl<TransactionHistoryBeneficiaryDto>(this as TransactionHistoryBeneficiaryDto, _$identity);

  /// Serializes this TransactionHistoryBeneficiaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryBeneficiaryDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'TransactionHistoryBeneficiaryDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryBeneficiaryDtoCopyWith<$Res>  {
  factory $TransactionHistoryBeneficiaryDtoCopyWith(TransactionHistoryBeneficiaryDto value, $Res Function(TransactionHistoryBeneficiaryDto) _then) = _$TransactionHistoryBeneficiaryDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$TransactionHistoryBeneficiaryDtoCopyWithImpl<$Res>
    implements $TransactionHistoryBeneficiaryDtoCopyWith<$Res> {
  _$TransactionHistoryBeneficiaryDtoCopyWithImpl(this._self, this._then);

  final TransactionHistoryBeneficiaryDto _self;
  final $Res Function(TransactionHistoryBeneficiaryDto) _then;

/// Create a copy of TransactionHistoryBeneficiaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of TransactionHistoryBeneficiaryDto
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


/// Adds pattern-matching-related methods to [TransactionHistoryBeneficiaryDto].
extension TransactionHistoryBeneficiaryDtoPatterns on TransactionHistoryBeneficiaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryBeneficiaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryBeneficiaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryBeneficiaryDto value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryBeneficiaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryBeneficiaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryBeneficiaryDto() when $default != null:
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
case _TransactionHistoryBeneficiaryDto() when $default != null:
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
case _TransactionHistoryBeneficiaryDto():
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
case _TransactionHistoryBeneficiaryDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistoryBeneficiaryDto implements TransactionHistoryBeneficiaryDto {
  const _TransactionHistoryBeneficiaryDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data});
  factory _TransactionHistoryBeneficiaryDto.fromJson(Map<String, dynamic> json) => _$TransactionHistoryBeneficiaryDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of TransactionHistoryBeneficiaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryBeneficiaryDtoCopyWith<_TransactionHistoryBeneficiaryDto> get copyWith => __$TransactionHistoryBeneficiaryDtoCopyWithImpl<_TransactionHistoryBeneficiaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryBeneficiaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryBeneficiaryDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'TransactionHistoryBeneficiaryDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryBeneficiaryDtoCopyWith<$Res> implements $TransactionHistoryBeneficiaryDtoCopyWith<$Res> {
  factory _$TransactionHistoryBeneficiaryDtoCopyWith(_TransactionHistoryBeneficiaryDto value, $Res Function(_TransactionHistoryBeneficiaryDto) _then) = __$TransactionHistoryBeneficiaryDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$TransactionHistoryBeneficiaryDtoCopyWithImpl<$Res>
    implements _$TransactionHistoryBeneficiaryDtoCopyWith<$Res> {
  __$TransactionHistoryBeneficiaryDtoCopyWithImpl(this._self, this._then);

  final _TransactionHistoryBeneficiaryDto _self;
  final $Res Function(_TransactionHistoryBeneficiaryDto) _then;

/// Create a copy of TransactionHistoryBeneficiaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_TransactionHistoryBeneficiaryDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of TransactionHistoryBeneficiaryDto
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

@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? get beneficiaryList;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.beneficiaryList, beneficiaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(beneficiaryList));

@override
String toString() {
  return 'Data(beneficiaryList: $beneficiaryList)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? beneficiaryList
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
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaryList = freezed,}) {
  return _then(_self.copyWith(
beneficiaryList: freezed == beneficiaryList ? _self.beneficiaryList : beneficiaryList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryList>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.beneficiaryList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "beneficiary_list") final  List<BeneficiaryList>? beneficiaryList}): _beneficiaryList = beneficiaryList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<BeneficiaryList>? _beneficiaryList;
@override@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? get beneficiaryList {
  final value = _beneficiaryList;
  if (value == null) return null;
  if (_beneficiaryList is EqualUnmodifiableListView) return _beneficiaryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._beneficiaryList, _beneficiaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_beneficiaryList));

@override
String toString() {
  return 'Data(beneficiaryList: $beneficiaryList)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? beneficiaryList
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
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaryList = freezed,}) {
  return _then(_Data(
beneficiaryList: freezed == beneficiaryList ? _self._beneficiaryList : beneficiaryList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryList>?,
  ));
}


}


/// @nodoc
mixin _$BeneficiaryList {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_first_name") String? get beneficiaryFirstName;@JsonKey(name: "beneficiary_middle_name") String? get beneficiaryMiddleName;@JsonKey(name: "beneficiary_last_name") String? get beneficiaryLastName;
/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryListCopyWith<BeneficiaryList> get copyWith => _$BeneficiaryListCopyWithImpl<BeneficiaryList>(this as BeneficiaryList, _$identity);

  /// Serializes this BeneficiaryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,beneficiaryCode,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName);

@override
String toString() {
  return 'BeneficiaryList(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryListCopyWith<$Res>  {
  factory $BeneficiaryListCopyWith(BeneficiaryList value, $Res Function(BeneficiaryList) _then) = _$BeneficiaryListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName
});




}
/// @nodoc
class _$BeneficiaryListCopyWithImpl<$Res>
    implements $BeneficiaryListCopyWith<$Res> {
  _$BeneficiaryListCopyWithImpl(this._self, this._then);

  final BeneficiaryList _self;
  final $Res Function(BeneficiaryList) _then;

/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryList].
extension BeneficiaryListPatterns on BeneficiaryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryList value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryList value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryList():
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryList implements BeneficiaryList {
  const _BeneficiaryList({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_first_name") this.beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name") this.beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name") this.beneficiaryLastName});
  factory _BeneficiaryList.fromJson(Map<String, dynamic> json) => _$BeneficiaryListFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_first_name") final  String? beneficiaryFirstName;
@override@JsonKey(name: "beneficiary_middle_name") final  String? beneficiaryMiddleName;
@override@JsonKey(name: "beneficiary_last_name") final  String? beneficiaryLastName;

/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryListCopyWith<_BeneficiaryList> get copyWith => __$BeneficiaryListCopyWithImpl<_BeneficiaryList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,beneficiaryCode,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName);

@override
String toString() {
  return 'BeneficiaryList(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryListCopyWith<$Res> implements $BeneficiaryListCopyWith<$Res> {
  factory _$BeneficiaryListCopyWith(_BeneficiaryList value, $Res Function(_BeneficiaryList) _then) = __$BeneficiaryListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName
});




}
/// @nodoc
class __$BeneficiaryListCopyWithImpl<$Res>
    implements _$BeneficiaryListCopyWith<$Res> {
  __$BeneficiaryListCopyWithImpl(this._self, this._then);

  final _BeneficiaryList _self;
  final $Res Function(_BeneficiaryList) _then;

/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,}) {
  return _then(_BeneficiaryList(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
