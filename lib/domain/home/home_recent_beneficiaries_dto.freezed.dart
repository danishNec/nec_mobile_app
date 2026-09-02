// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_recent_beneficiaries_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeRecentBeneficiariesDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of HomeRecentBeneficiariesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeRecentBeneficiariesDtoCopyWith<HomeRecentBeneficiariesDto> get copyWith => _$HomeRecentBeneficiariesDtoCopyWithImpl<HomeRecentBeneficiariesDto>(this as HomeRecentBeneficiariesDto, _$identity);

  /// Serializes this HomeRecentBeneficiariesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRecentBeneficiariesDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'HomeRecentBeneficiariesDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $HomeRecentBeneficiariesDtoCopyWith<$Res>  {
  factory $HomeRecentBeneficiariesDtoCopyWith(HomeRecentBeneficiariesDto value, $Res Function(HomeRecentBeneficiariesDto) _then) = _$HomeRecentBeneficiariesDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomeRecentBeneficiariesDtoCopyWithImpl<$Res>
    implements $HomeRecentBeneficiariesDtoCopyWith<$Res> {
  _$HomeRecentBeneficiariesDtoCopyWithImpl(this._self, this._then);

  final HomeRecentBeneficiariesDto _self;
  final $Res Function(HomeRecentBeneficiariesDto) _then;

/// Create a copy of HomeRecentBeneficiariesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeRecentBeneficiariesDto
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


/// Adds pattern-matching-related methods to [HomeRecentBeneficiariesDto].
extension HomeRecentBeneficiariesDtoPatterns on HomeRecentBeneficiariesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeRecentBeneficiariesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeRecentBeneficiariesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeRecentBeneficiariesDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeRecentBeneficiariesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeRecentBeneficiariesDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeRecentBeneficiariesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeRecentBeneficiariesDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)  $default,) {final _that = this;
switch (_that) {
case _HomeRecentBeneficiariesDto():
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,) {final _that = this;
switch (_that) {
case _HomeRecentBeneficiariesDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeRecentBeneficiariesDto implements HomeRecentBeneficiariesDto {
  const _HomeRecentBeneficiariesDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _HomeRecentBeneficiariesDto.fromJson(Map<String, dynamic> json) => _$HomeRecentBeneficiariesDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of HomeRecentBeneficiariesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeRecentBeneficiariesDtoCopyWith<_HomeRecentBeneficiariesDto> get copyWith => __$HomeRecentBeneficiariesDtoCopyWithImpl<_HomeRecentBeneficiariesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeRecentBeneficiariesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeRecentBeneficiariesDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'HomeRecentBeneficiariesDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$HomeRecentBeneficiariesDtoCopyWith<$Res> implements $HomeRecentBeneficiariesDtoCopyWith<$Res> {
  factory _$HomeRecentBeneficiariesDtoCopyWith(_HomeRecentBeneficiariesDto value, $Res Function(_HomeRecentBeneficiariesDto) _then) = __$HomeRecentBeneficiariesDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$HomeRecentBeneficiariesDtoCopyWithImpl<$Res>
    implements _$HomeRecentBeneficiariesDtoCopyWith<$Res> {
  __$HomeRecentBeneficiariesDtoCopyWithImpl(this._self, this._then);

  final _HomeRecentBeneficiariesDto _self;
  final $Res Function(_HomeRecentBeneficiariesDto) _then;

/// Create a copy of HomeRecentBeneficiariesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_HomeRecentBeneficiariesDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeRecentBeneficiariesDto
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

@JsonKey(name: "beneficiary_list") List<RecentBeneficiaryList>? get beneficiaryList;
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
@JsonKey(name: "beneficiary_list") List<RecentBeneficiaryList>? beneficiaryList
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
as List<RecentBeneficiaryList>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<RecentBeneficiaryList>? beneficiaryList)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<RecentBeneficiaryList>? beneficiaryList)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_list")  List<RecentBeneficiaryList>? beneficiaryList)?  $default,) {final _that = this;
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
  const _Data({@JsonKey(name: "beneficiary_list") final  List<RecentBeneficiaryList>? beneficiaryList}): _beneficiaryList = beneficiaryList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<RecentBeneficiaryList>? _beneficiaryList;
@override@JsonKey(name: "beneficiary_list") List<RecentBeneficiaryList>? get beneficiaryList {
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
@JsonKey(name: "beneficiary_list") List<RecentBeneficiaryList>? beneficiaryList
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
as List<RecentBeneficiaryList>?,
  ));
}


}


/// @nodoc
mixin _$RecentBeneficiaryList {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "transaction_reference") int? get transactionReference;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_salutation") String? get beneficiarySalutation;@JsonKey(name: "beneficiary_gender") String? get beneficiaryGender;@JsonKey(name: "beneficiary_first_name") String? get beneficiaryFirstName;@JsonKey(name: "beneficiary_middle_name") String? get beneficiaryMiddleName;@JsonKey(name: "beneficiary_last_name") String? get beneficiaryLastName;@JsonKey(name: "beneficiary_first_name_unicode") String? get beneficiaryFirstNameUnicode;@JsonKey(name: "beneficiary_middle_name_unicode") String? get beneficiaryMiddleNameUnicode;@JsonKey(name: "beneficiary_last_name_unicode") String? get beneficiaryLastNameUnicode;@JsonKey(name: "beneficiary_address1") String? get beneficiaryAddress1;@JsonKey(name: "beneficiary_address2") String? get beneficiaryAddress2;@JsonKey(name: "beneficiary_country_code") String? get beneficiaryCountryCode;@JsonKey(name: "beneficiary_country_name") String? get beneficiaryCountryName;@JsonKey(name: "beneficiary_nationality_code") String? get beneficiaryNationalityCode;@JsonKey(name: "beneficiary_bank_code") String? get beneficiaryBankCode;@JsonKey(name: "beneficiary_bank_name") String? get beneficiaryBankName;@JsonKey(name: "beneficiary_branch_code") String? get beneficiaryBranchCode;@JsonKey(name: "beneficary_relation") String? get beneficaryRelation;@JsonKey(name: "beneficary_relation_name") String? get beneficaryRelationName;@JsonKey(name: "beneficiary_bank_account_number") String? get beneficiaryBankAccountNumber;@JsonKey(name: "beneficiary_category_code") String? get beneficiaryCategoryCode;@JsonKey(name: "route_code") String? get routeCode;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "status") String? get status;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "disbursal_mode") String? get disbursalMode;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "income_source_name") String? get incomeSourceName;@JsonKey(name: "purpose_name") String? get purposeName;@JsonKey(name: "source_of_fund") String? get sourceOfFund;@JsonKey(name: "purpose_of_transaction") String? get purposeOfTransaction;@JsonKey(name: "beneficiary_category") String? get beneficiaryCategory;@JsonKey(name: "module_code") int? get moduleCode;@JsonKey(name: "routing_bank_code") int? get routingBankCode;@JsonKey(name: "flag_url") String? get flagUrl;@JsonKey(name: "beneficiary_state_id") int? get beneficiaryStateId;@JsonKey(name: "tran_list") List<TranList>? get tranList;@JsonKey(name: "beneficiary_state") String? get beneficiaryState;@JsonKey(name: "beneficiary_city") String? get beneficiaryCity;
/// Create a copy of RecentBeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentBeneficiaryListCopyWith<RecentBeneficiaryList> get copyWith => _$RecentBeneficiaryListCopyWithImpl<RecentBeneficiaryList>(this as RecentBeneficiaryList, _$identity);

  /// Serializes this RecentBeneficiaryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentBeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiarySalutation, beneficiarySalutation) || other.beneficiarySalutation == beneficiarySalutation)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryFirstNameUnicode, beneficiaryFirstNameUnicode) || other.beneficiaryFirstNameUnicode == beneficiaryFirstNameUnicode)&&(identical(other.beneficiaryMiddleNameUnicode, beneficiaryMiddleNameUnicode) || other.beneficiaryMiddleNameUnicode == beneficiaryMiddleNameUnicode)&&(identical(other.beneficiaryLastNameUnicode, beneficiaryLastNameUnicode) || other.beneficiaryLastNameUnicode == beneficiaryLastNameUnicode)&&(identical(other.beneficiaryAddress1, beneficiaryAddress1) || other.beneficiaryAddress1 == beneficiaryAddress1)&&(identical(other.beneficiaryAddress2, beneficiaryAddress2) || other.beneficiaryAddress2 == beneficiaryAddress2)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.beneficiaryCategoryCode, beneficiaryCategoryCode) || other.beneficiaryCategoryCode == beneficiaryCategoryCode)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.beneficiaryCategory, beneficiaryCategory) || other.beneficiaryCategory == beneficiaryCategory)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.routingBankCode, routingBankCode) || other.routingBankCode == routingBankCode)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.beneficiaryStateId, beneficiaryStateId) || other.beneficiaryStateId == beneficiaryStateId)&&const DeepCollectionEquality().equals(other.tranList, tranList)&&(identical(other.beneficiaryState, beneficiaryState) || other.beneficiaryState == beneficiaryState)&&(identical(other.beneficiaryCity, beneficiaryCity) || other.beneficiaryCity == beneficiaryCity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,transactionReference,beneficiaryCode,beneficiarySalutation,beneficiaryGender,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName,beneficiaryFirstNameUnicode,beneficiaryMiddleNameUnicode,beneficiaryLastNameUnicode,beneficiaryAddress1,beneficiaryAddress2,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,beneficiaryCategoryCode,routeCode,productCode,productName,status,disbursalModeId,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,beneficiaryCategory,moduleCode,routingBankCode,flagUrl,beneficiaryStateId,const DeepCollectionEquality().hash(tranList),beneficiaryState,beneficiaryCity]);

@override
String toString() {
  return 'RecentBeneficiaryList(eId: $eId, transactionReference: $transactionReference, beneficiaryCode: $beneficiaryCode, beneficiarySalutation: $beneficiarySalutation, beneficiaryGender: $beneficiaryGender, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName, beneficiaryFirstNameUnicode: $beneficiaryFirstNameUnicode, beneficiaryMiddleNameUnicode: $beneficiaryMiddleNameUnicode, beneficiaryLastNameUnicode: $beneficiaryLastNameUnicode, beneficiaryAddress1: $beneficiaryAddress1, beneficiaryAddress2: $beneficiaryAddress2, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, beneficiaryCategoryCode: $beneficiaryCategoryCode, routeCode: $routeCode, productCode: $productCode, productName: $productName, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, beneficiaryCategory: $beneficiaryCategory, moduleCode: $moduleCode, routingBankCode: $routingBankCode, flagUrl: $flagUrl, beneficiaryStateId: $beneficiaryStateId, tranList: $tranList, beneficiaryState: $beneficiaryState, beneficiaryCity: $beneficiaryCity)';
}


}

/// @nodoc
abstract mixin class $RecentBeneficiaryListCopyWith<$Res>  {
  factory $RecentBeneficiaryListCopyWith(RecentBeneficiaryList value, $Res Function(RecentBeneficiaryList) _then) = _$RecentBeneficiaryListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_salutation") String? beneficiarySalutation,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_first_name_unicode") String? beneficiaryFirstNameUnicode,@JsonKey(name: "beneficiary_middle_name_unicode") String? beneficiaryMiddleNameUnicode,@JsonKey(name: "beneficiary_last_name_unicode") String? beneficiaryLastNameUnicode,@JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,@JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "beneficiary_category") String? beneficiaryCategory,@JsonKey(name: "module_code") int? moduleCode,@JsonKey(name: "routing_bank_code") int? routingBankCode,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "beneficiary_state_id") int? beneficiaryStateId,@JsonKey(name: "tran_list") List<TranList>? tranList,@JsonKey(name: "beneficiary_state") String? beneficiaryState,@JsonKey(name: "beneficiary_city") String? beneficiaryCity
});




}
/// @nodoc
class _$RecentBeneficiaryListCopyWithImpl<$Res>
    implements $RecentBeneficiaryListCopyWith<$Res> {
  _$RecentBeneficiaryListCopyWithImpl(this._self, this._then);

  final RecentBeneficiaryList _self;
  final $Res Function(RecentBeneficiaryList) _then;

/// Create a copy of RecentBeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? transactionReference = freezed,Object? beneficiaryCode = freezed,Object? beneficiarySalutation = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryFirstNameUnicode = freezed,Object? beneficiaryMiddleNameUnicode = freezed,Object? beneficiaryLastNameUnicode = freezed,Object? beneficiaryAddress1 = freezed,Object? beneficiaryAddress2 = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? beneficiaryCategoryCode = freezed,Object? routeCode = freezed,Object? productCode = freezed,Object? productName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? beneficiaryCategory = freezed,Object? moduleCode = freezed,Object? routingBankCode = freezed,Object? flagUrl = freezed,Object? beneficiaryStateId = freezed,Object? tranList = freezed,Object? beneficiaryState = freezed,Object? beneficiaryCity = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiarySalutation: freezed == beneficiarySalutation ? _self.beneficiarySalutation : beneficiarySalutation // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstNameUnicode: freezed == beneficiaryFirstNameUnicode ? _self.beneficiaryFirstNameUnicode : beneficiaryFirstNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleNameUnicode: freezed == beneficiaryMiddleNameUnicode ? _self.beneficiaryMiddleNameUnicode : beneficiaryMiddleNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastNameUnicode: freezed == beneficiaryLastNameUnicode ? _self.beneficiaryLastNameUnicode : beneficiaryLastNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress1: freezed == beneficiaryAddress1 ? _self.beneficiaryAddress1 : beneficiaryAddress1 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress2: freezed == beneficiaryAddress2 ? _self.beneficiaryAddress2 : beneficiaryAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategoryCode: freezed == beneficiaryCategoryCode ? _self.beneficiaryCategoryCode : beneficiaryCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategory: freezed == beneficiaryCategory ? _self.beneficiaryCategory : beneficiaryCategory // ignore: cast_nullable_to_non_nullable
as String?,moduleCode: freezed == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as int?,routingBankCode: freezed == routingBankCode ? _self.routingBankCode : routingBankCode // ignore: cast_nullable_to_non_nullable
as int?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryStateId: freezed == beneficiaryStateId ? _self.beneficiaryStateId : beneficiaryStateId // ignore: cast_nullable_to_non_nullable
as int?,tranList: freezed == tranList ? _self.tranList : tranList // ignore: cast_nullable_to_non_nullable
as List<TranList>?,beneficiaryState: freezed == beneficiaryState ? _self.beneficiaryState : beneficiaryState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCity: freezed == beneficiaryCity ? _self.beneficiaryCity : beneficiaryCity // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentBeneficiaryList].
extension RecentBeneficiaryListPatterns on RecentBeneficiaryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentBeneficiaryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentBeneficiaryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentBeneficiaryList value)  $default,){
final _that = this;
switch (_that) {
case _RecentBeneficiaryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentBeneficiaryList value)?  $default,){
final _that = this;
switch (_that) {
case _RecentBeneficiaryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_salutation")  String? beneficiarySalutation, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_state_id")  int? beneficiaryStateId, @JsonKey(name: "tran_list")  List<TranList>? tranList, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentBeneficiaryList() when $default != null:
return $default(_that.eId,_that.transactionReference,_that.beneficiaryCode,_that.beneficiarySalutation,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.routeCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.beneficiaryCategory,_that.moduleCode,_that.routingBankCode,_that.flagUrl,_that.beneficiaryStateId,_that.tranList,_that.beneficiaryState,_that.beneficiaryCity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_salutation")  String? beneficiarySalutation, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_state_id")  int? beneficiaryStateId, @JsonKey(name: "tran_list")  List<TranList>? tranList, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity)  $default,) {final _that = this;
switch (_that) {
case _RecentBeneficiaryList():
return $default(_that.eId,_that.transactionReference,_that.beneficiaryCode,_that.beneficiarySalutation,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.routeCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.beneficiaryCategory,_that.moduleCode,_that.routingBankCode,_that.flagUrl,_that.beneficiaryStateId,_that.tranList,_that.beneficiaryState,_that.beneficiaryCity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_salutation")  String? beneficiarySalutation, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_state_id")  int? beneficiaryStateId, @JsonKey(name: "tran_list")  List<TranList>? tranList, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity)?  $default,) {final _that = this;
switch (_that) {
case _RecentBeneficiaryList() when $default != null:
return $default(_that.eId,_that.transactionReference,_that.beneficiaryCode,_that.beneficiarySalutation,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.routeCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.beneficiaryCategory,_that.moduleCode,_that.routingBankCode,_that.flagUrl,_that.beneficiaryStateId,_that.tranList,_that.beneficiaryState,_that.beneficiaryCity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentBeneficiaryList implements RecentBeneficiaryList {
  const _RecentBeneficiaryList({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "transaction_reference") this.transactionReference, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_salutation") this.beneficiarySalutation, @JsonKey(name: "beneficiary_gender") this.beneficiaryGender, @JsonKey(name: "beneficiary_first_name") this.beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name") this.beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name") this.beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode") this.beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode") this.beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode") this.beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1") this.beneficiaryAddress1, @JsonKey(name: "beneficiary_address2") this.beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code") this.beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name") this.beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code") this.beneficiaryNationalityCode, @JsonKey(name: "beneficiary_bank_code") this.beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name") this.beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code") this.beneficiaryBranchCode, @JsonKey(name: "beneficary_relation") this.beneficaryRelation, @JsonKey(name: "beneficary_relation_name") this.beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number") this.beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code") this.beneficiaryCategoryCode, @JsonKey(name: "route_code") this.routeCode, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "status") this.status, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "disbursal_mode") this.disbursalMode, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "income_source_name") this.incomeSourceName, @JsonKey(name: "purpose_name") this.purposeName, @JsonKey(name: "source_of_fund") this.sourceOfFund, @JsonKey(name: "purpose_of_transaction") this.purposeOfTransaction, @JsonKey(name: "beneficiary_category") this.beneficiaryCategory, @JsonKey(name: "module_code") this.moduleCode, @JsonKey(name: "routing_bank_code") this.routingBankCode, @JsonKey(name: "flag_url") this.flagUrl, @JsonKey(name: "beneficiary_state_id") this.beneficiaryStateId, @JsonKey(name: "tran_list") final  List<TranList>? tranList, @JsonKey(name: "beneficiary_state") this.beneficiaryState, @JsonKey(name: "beneficiary_city") this.beneficiaryCity}): _tranList = tranList;
  factory _RecentBeneficiaryList.fromJson(Map<String, dynamic> json) => _$RecentBeneficiaryListFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "transaction_reference") final  int? transactionReference;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_salutation") final  String? beneficiarySalutation;
@override@JsonKey(name: "beneficiary_gender") final  String? beneficiaryGender;
@override@JsonKey(name: "beneficiary_first_name") final  String? beneficiaryFirstName;
@override@JsonKey(name: "beneficiary_middle_name") final  String? beneficiaryMiddleName;
@override@JsonKey(name: "beneficiary_last_name") final  String? beneficiaryLastName;
@override@JsonKey(name: "beneficiary_first_name_unicode") final  String? beneficiaryFirstNameUnicode;
@override@JsonKey(name: "beneficiary_middle_name_unicode") final  String? beneficiaryMiddleNameUnicode;
@override@JsonKey(name: "beneficiary_last_name_unicode") final  String? beneficiaryLastNameUnicode;
@override@JsonKey(name: "beneficiary_address1") final  String? beneficiaryAddress1;
@override@JsonKey(name: "beneficiary_address2") final  String? beneficiaryAddress2;
@override@JsonKey(name: "beneficiary_country_code") final  String? beneficiaryCountryCode;
@override@JsonKey(name: "beneficiary_country_name") final  String? beneficiaryCountryName;
@override@JsonKey(name: "beneficiary_nationality_code") final  String? beneficiaryNationalityCode;
@override@JsonKey(name: "beneficiary_bank_code") final  String? beneficiaryBankCode;
@override@JsonKey(name: "beneficiary_bank_name") final  String? beneficiaryBankName;
@override@JsonKey(name: "beneficiary_branch_code") final  String? beneficiaryBranchCode;
@override@JsonKey(name: "beneficary_relation") final  String? beneficaryRelation;
@override@JsonKey(name: "beneficary_relation_name") final  String? beneficaryRelationName;
@override@JsonKey(name: "beneficiary_bank_account_number") final  String? beneficiaryBankAccountNumber;
@override@JsonKey(name: "beneficiary_category_code") final  String? beneficiaryCategoryCode;
@override@JsonKey(name: "route_code") final  String? routeCode;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "disbursal_mode") final  String? disbursalMode;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "income_source_name") final  String? incomeSourceName;
@override@JsonKey(name: "purpose_name") final  String? purposeName;
@override@JsonKey(name: "source_of_fund") final  String? sourceOfFund;
@override@JsonKey(name: "purpose_of_transaction") final  String? purposeOfTransaction;
@override@JsonKey(name: "beneficiary_category") final  String? beneficiaryCategory;
@override@JsonKey(name: "module_code") final  int? moduleCode;
@override@JsonKey(name: "routing_bank_code") final  int? routingBankCode;
@override@JsonKey(name: "flag_url") final  String? flagUrl;
@override@JsonKey(name: "beneficiary_state_id") final  int? beneficiaryStateId;
 final  List<TranList>? _tranList;
@override@JsonKey(name: "tran_list") List<TranList>? get tranList {
  final value = _tranList;
  if (value == null) return null;
  if (_tranList is EqualUnmodifiableListView) return _tranList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "beneficiary_state") final  String? beneficiaryState;
@override@JsonKey(name: "beneficiary_city") final  String? beneficiaryCity;

/// Create a copy of RecentBeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentBeneficiaryListCopyWith<_RecentBeneficiaryList> get copyWith => __$RecentBeneficiaryListCopyWithImpl<_RecentBeneficiaryList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentBeneficiaryListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentBeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiarySalutation, beneficiarySalutation) || other.beneficiarySalutation == beneficiarySalutation)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryFirstNameUnicode, beneficiaryFirstNameUnicode) || other.beneficiaryFirstNameUnicode == beneficiaryFirstNameUnicode)&&(identical(other.beneficiaryMiddleNameUnicode, beneficiaryMiddleNameUnicode) || other.beneficiaryMiddleNameUnicode == beneficiaryMiddleNameUnicode)&&(identical(other.beneficiaryLastNameUnicode, beneficiaryLastNameUnicode) || other.beneficiaryLastNameUnicode == beneficiaryLastNameUnicode)&&(identical(other.beneficiaryAddress1, beneficiaryAddress1) || other.beneficiaryAddress1 == beneficiaryAddress1)&&(identical(other.beneficiaryAddress2, beneficiaryAddress2) || other.beneficiaryAddress2 == beneficiaryAddress2)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.beneficiaryCategoryCode, beneficiaryCategoryCode) || other.beneficiaryCategoryCode == beneficiaryCategoryCode)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.beneficiaryCategory, beneficiaryCategory) || other.beneficiaryCategory == beneficiaryCategory)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.routingBankCode, routingBankCode) || other.routingBankCode == routingBankCode)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.beneficiaryStateId, beneficiaryStateId) || other.beneficiaryStateId == beneficiaryStateId)&&const DeepCollectionEquality().equals(other._tranList, _tranList)&&(identical(other.beneficiaryState, beneficiaryState) || other.beneficiaryState == beneficiaryState)&&(identical(other.beneficiaryCity, beneficiaryCity) || other.beneficiaryCity == beneficiaryCity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,transactionReference,beneficiaryCode,beneficiarySalutation,beneficiaryGender,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName,beneficiaryFirstNameUnicode,beneficiaryMiddleNameUnicode,beneficiaryLastNameUnicode,beneficiaryAddress1,beneficiaryAddress2,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,beneficiaryCategoryCode,routeCode,productCode,productName,status,disbursalModeId,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,beneficiaryCategory,moduleCode,routingBankCode,flagUrl,beneficiaryStateId,const DeepCollectionEquality().hash(_tranList),beneficiaryState,beneficiaryCity]);

@override
String toString() {
  return 'RecentBeneficiaryList(eId: $eId, transactionReference: $transactionReference, beneficiaryCode: $beneficiaryCode, beneficiarySalutation: $beneficiarySalutation, beneficiaryGender: $beneficiaryGender, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName, beneficiaryFirstNameUnicode: $beneficiaryFirstNameUnicode, beneficiaryMiddleNameUnicode: $beneficiaryMiddleNameUnicode, beneficiaryLastNameUnicode: $beneficiaryLastNameUnicode, beneficiaryAddress1: $beneficiaryAddress1, beneficiaryAddress2: $beneficiaryAddress2, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, beneficiaryCategoryCode: $beneficiaryCategoryCode, routeCode: $routeCode, productCode: $productCode, productName: $productName, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, beneficiaryCategory: $beneficiaryCategory, moduleCode: $moduleCode, routingBankCode: $routingBankCode, flagUrl: $flagUrl, beneficiaryStateId: $beneficiaryStateId, tranList: $tranList, beneficiaryState: $beneficiaryState, beneficiaryCity: $beneficiaryCity)';
}


}

/// @nodoc
abstract mixin class _$RecentBeneficiaryListCopyWith<$Res> implements $RecentBeneficiaryListCopyWith<$Res> {
  factory _$RecentBeneficiaryListCopyWith(_RecentBeneficiaryList value, $Res Function(_RecentBeneficiaryList) _then) = __$RecentBeneficiaryListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_salutation") String? beneficiarySalutation,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_first_name_unicode") String? beneficiaryFirstNameUnicode,@JsonKey(name: "beneficiary_middle_name_unicode") String? beneficiaryMiddleNameUnicode,@JsonKey(name: "beneficiary_last_name_unicode") String? beneficiaryLastNameUnicode,@JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,@JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "beneficiary_category") String? beneficiaryCategory,@JsonKey(name: "module_code") int? moduleCode,@JsonKey(name: "routing_bank_code") int? routingBankCode,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "beneficiary_state_id") int? beneficiaryStateId,@JsonKey(name: "tran_list") List<TranList>? tranList,@JsonKey(name: "beneficiary_state") String? beneficiaryState,@JsonKey(name: "beneficiary_city") String? beneficiaryCity
});




}
/// @nodoc
class __$RecentBeneficiaryListCopyWithImpl<$Res>
    implements _$RecentBeneficiaryListCopyWith<$Res> {
  __$RecentBeneficiaryListCopyWithImpl(this._self, this._then);

  final _RecentBeneficiaryList _self;
  final $Res Function(_RecentBeneficiaryList) _then;

/// Create a copy of RecentBeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? transactionReference = freezed,Object? beneficiaryCode = freezed,Object? beneficiarySalutation = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryFirstNameUnicode = freezed,Object? beneficiaryMiddleNameUnicode = freezed,Object? beneficiaryLastNameUnicode = freezed,Object? beneficiaryAddress1 = freezed,Object? beneficiaryAddress2 = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? beneficiaryCategoryCode = freezed,Object? routeCode = freezed,Object? productCode = freezed,Object? productName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? beneficiaryCategory = freezed,Object? moduleCode = freezed,Object? routingBankCode = freezed,Object? flagUrl = freezed,Object? beneficiaryStateId = freezed,Object? tranList = freezed,Object? beneficiaryState = freezed,Object? beneficiaryCity = freezed,}) {
  return _then(_RecentBeneficiaryList(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiarySalutation: freezed == beneficiarySalutation ? _self.beneficiarySalutation : beneficiarySalutation // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstNameUnicode: freezed == beneficiaryFirstNameUnicode ? _self.beneficiaryFirstNameUnicode : beneficiaryFirstNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleNameUnicode: freezed == beneficiaryMiddleNameUnicode ? _self.beneficiaryMiddleNameUnicode : beneficiaryMiddleNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastNameUnicode: freezed == beneficiaryLastNameUnicode ? _self.beneficiaryLastNameUnicode : beneficiaryLastNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress1: freezed == beneficiaryAddress1 ? _self.beneficiaryAddress1 : beneficiaryAddress1 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress2: freezed == beneficiaryAddress2 ? _self.beneficiaryAddress2 : beneficiaryAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategoryCode: freezed == beneficiaryCategoryCode ? _self.beneficiaryCategoryCode : beneficiaryCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategory: freezed == beneficiaryCategory ? _self.beneficiaryCategory : beneficiaryCategory // ignore: cast_nullable_to_non_nullable
as String?,moduleCode: freezed == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as int?,routingBankCode: freezed == routingBankCode ? _self.routingBankCode : routingBankCode // ignore: cast_nullable_to_non_nullable
as int?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryStateId: freezed == beneficiaryStateId ? _self.beneficiaryStateId : beneficiaryStateId // ignore: cast_nullable_to_non_nullable
as int?,tranList: freezed == tranList ? _self._tranList : tranList // ignore: cast_nullable_to_non_nullable
as List<TranList>?,beneficiaryState: freezed == beneficiaryState ? _self.beneficiaryState : beneficiaryState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCity: freezed == beneficiaryCity ? _self.beneficiaryCity : beneficiaryCity // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TranList {

@JsonKey(name: "transaction_reference") int? get transactionReference;@JsonKey(name: "transaction_date") DateTime? get transactionDate;@JsonKey(name: "source_currency_code") String? get sourceCurrencyCode;@JsonKey(name: "source_currency_name") String? get sourceCurrencyName;@JsonKey(name: "destination_currency_code") String? get destinationCurrencyCode;@JsonKey(name: "destination_currency_name") String? get destinationCurrencyName;@JsonKey(name: "source_country_code") String? get sourceCountryCode;@JsonKey(name: "source_country_name") String? get sourceCountryName;@JsonKey(name: "destination_country_code") String? get destinationCountryCode;@JsonKey(name: "destination_country_name") String? get destinationCountryName;@JsonKey(name: "source_amount") double? get sourceAmount;@JsonKey(name: "local_amount") double? get localAmount;@JsonKey(name: "bene_pay") int? get benePay;@JsonKey(name: "transaction_product_code") int? get transactionProductCode;@JsonKey(name: "rate") int? get rate;@JsonKey(name: "destination_amount") double? get destinationAmount;@JsonKey(name: "commission") int? get commission;@JsonKey(name: "tax_percentage") int? get taxPercentage;@JsonKey(name: "tax_collected") int? get taxCollected;@JsonKey(name: "pay_amount") int? get payAmount;@JsonKey(name: "receive_amount") int? get receiveAmount;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "payment_mode") String? get paymentMode;@JsonKey(name: "payment_mode_code") String? get paymentModeCode;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "route_type") String? get routeType;@JsonKey(name: "status") String? get status;@JsonKey(name: "disbursal_mode_name") String? get disbursalModeName;@JsonKey(name: "created_on") DateTime? get createdOn;@JsonKey(name: "routing_bank_name") String? get routingBankName;@JsonKey(name: "routing_bank_account_code") String? get routingBankAccountCode;@JsonKey(name: "disbursal_mode_code") String? get disbursalModeCode;@JsonKey(name: "disbursal_mode_c_b_code") String? get disbursalModeCBCode;@JsonKey(name: "module_code") int? get moduleCode;@JsonKey(name: "location_code") int? get locationCode;@JsonKey(name: "routing_bank_code") int? get routingBankCode;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "member_code") int? get memberCode;@JsonKey(name: "transaction_pin_number") String? get transactionPinNumber;@JsonKey(name: "decimal_places") int? get decimalPlaces;
/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranListCopyWith<TranList> get copyWith => _$TranListCopyWithImpl<TranList>(this as TranList, _$identity);

  /// Serializes this TranList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranList&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.sourceCurrencyCode, sourceCurrencyCode) || other.sourceCurrencyCode == sourceCurrencyCode)&&(identical(other.sourceCurrencyName, sourceCurrencyName) || other.sourceCurrencyName == sourceCurrencyName)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.destinationCurrencyName, destinationCurrencyName) || other.destinationCurrencyName == destinationCurrencyName)&&(identical(other.sourceCountryCode, sourceCountryCode) || other.sourceCountryCode == sourceCountryCode)&&(identical(other.sourceCountryName, sourceCountryName) || other.sourceCountryName == sourceCountryName)&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.destinationCountryName, destinationCountryName) || other.destinationCountryName == destinationCountryName)&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount)&&(identical(other.localAmount, localAmount) || other.localAmount == localAmount)&&(identical(other.benePay, benePay) || other.benePay == benePay)&&(identical(other.transactionProductCode, transactionProductCode) || other.transactionProductCode == transactionProductCode)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.paymentModeCode, paymentModeCode) || other.paymentModeCode == paymentModeCode)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeName, disbursalModeName) || other.disbursalModeName == disbursalModeName)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.routingBankName, routingBankName) || other.routingBankName == routingBankName)&&(identical(other.routingBankAccountCode, routingBankAccountCode) || other.routingBankAccountCode == routingBankAccountCode)&&(identical(other.disbursalModeCode, disbursalModeCode) || other.disbursalModeCode == disbursalModeCode)&&(identical(other.disbursalModeCBCode, disbursalModeCBCode) || other.disbursalModeCBCode == disbursalModeCBCode)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.locationCode, locationCode) || other.locationCode == locationCode)&&(identical(other.routingBankCode, routingBankCode) || other.routingBankCode == routingBankCode)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.transactionPinNumber, transactionPinNumber) || other.transactionPinNumber == transactionPinNumber)&&(identical(other.decimalPlaces, decimalPlaces) || other.decimalPlaces == decimalPlaces));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,transactionReference,transactionDate,sourceCurrencyCode,sourceCurrencyName,destinationCurrencyCode,destinationCurrencyName,sourceCountryCode,sourceCountryName,destinationCountryCode,destinationCountryName,sourceAmount,localAmount,benePay,transactionProductCode,rate,destinationAmount,commission,taxPercentage,taxCollected,payAmount,receiveAmount,productCode,paymentMode,paymentModeCode,beneficiaryCode,routeType,status,disbursalModeName,createdOn,routingBankName,routingBankAccountCode,disbursalModeCode,disbursalModeCBCode,moduleCode,locationCode,routingBankCode,disbursalModeId,memberCode,transactionPinNumber,decimalPlaces]);

@override
String toString() {
  return 'TranList(transactionReference: $transactionReference, transactionDate: $transactionDate, sourceCurrencyCode: $sourceCurrencyCode, sourceCurrencyName: $sourceCurrencyName, destinationCurrencyCode: $destinationCurrencyCode, destinationCurrencyName: $destinationCurrencyName, sourceCountryCode: $sourceCountryCode, sourceCountryName: $sourceCountryName, destinationCountryCode: $destinationCountryCode, destinationCountryName: $destinationCountryName, sourceAmount: $sourceAmount, localAmount: $localAmount, benePay: $benePay, transactionProductCode: $transactionProductCode, rate: $rate, destinationAmount: $destinationAmount, commission: $commission, taxPercentage: $taxPercentage, taxCollected: $taxCollected, payAmount: $payAmount, receiveAmount: $receiveAmount, productCode: $productCode, paymentMode: $paymentMode, paymentModeCode: $paymentModeCode, beneficiaryCode: $beneficiaryCode, routeType: $routeType, status: $status, disbursalModeName: $disbursalModeName, createdOn: $createdOn, routingBankName: $routingBankName, routingBankAccountCode: $routingBankAccountCode, disbursalModeCode: $disbursalModeCode, disbursalModeCBCode: $disbursalModeCBCode, moduleCode: $moduleCode, locationCode: $locationCode, routingBankCode: $routingBankCode, disbursalModeId: $disbursalModeId, memberCode: $memberCode, transactionPinNumber: $transactionPinNumber, decimalPlaces: $decimalPlaces)';
}


}

/// @nodoc
abstract mixin class $TranListCopyWith<$Res>  {
  factory $TranListCopyWith(TranList value, $Res Function(TranList) _then) = _$TranListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "transaction_date") DateTime? transactionDate,@JsonKey(name: "source_currency_code") String? sourceCurrencyCode,@JsonKey(name: "source_currency_name") String? sourceCurrencyName,@JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,@JsonKey(name: "destination_currency_name") String? destinationCurrencyName,@JsonKey(name: "source_country_code") String? sourceCountryCode,@JsonKey(name: "source_country_name") String? sourceCountryName,@JsonKey(name: "destination_country_code") String? destinationCountryCode,@JsonKey(name: "destination_country_name") String? destinationCountryName,@JsonKey(name: "source_amount") double? sourceAmount,@JsonKey(name: "local_amount") double? localAmount,@JsonKey(name: "bene_pay") int? benePay,@JsonKey(name: "transaction_product_code") int? transactionProductCode,@JsonKey(name: "rate") int? rate,@JsonKey(name: "destination_amount") double? destinationAmount,@JsonKey(name: "commission") int? commission,@JsonKey(name: "tax_percentage") int? taxPercentage,@JsonKey(name: "tax_collected") int? taxCollected,@JsonKey(name: "pay_amount") int? payAmount,@JsonKey(name: "receive_amount") int? receiveAmount,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "payment_mode") String? paymentMode,@JsonKey(name: "payment_mode_code") String? paymentModeCode,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_name") String? disbursalModeName,@JsonKey(name: "created_on") DateTime? createdOn,@JsonKey(name: "routing_bank_name") String? routingBankName,@JsonKey(name: "routing_bank_account_code") String? routingBankAccountCode,@JsonKey(name: "disbursal_mode_code") String? disbursalModeCode,@JsonKey(name: "disbursal_mode_c_b_code") String? disbursalModeCBCode,@JsonKey(name: "module_code") int? moduleCode,@JsonKey(name: "location_code") int? locationCode,@JsonKey(name: "routing_bank_code") int? routingBankCode,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "transaction_pin_number") String? transactionPinNumber,@JsonKey(name: "decimal_places") int? decimalPlaces
});




}
/// @nodoc
class _$TranListCopyWithImpl<$Res>
    implements $TranListCopyWith<$Res> {
  _$TranListCopyWithImpl(this._self, this._then);

  final TranList _self;
  final $Res Function(TranList) _then;

/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionReference = freezed,Object? transactionDate = freezed,Object? sourceCurrencyCode = freezed,Object? sourceCurrencyName = freezed,Object? destinationCurrencyCode = freezed,Object? destinationCurrencyName = freezed,Object? sourceCountryCode = freezed,Object? sourceCountryName = freezed,Object? destinationCountryCode = freezed,Object? destinationCountryName = freezed,Object? sourceAmount = freezed,Object? localAmount = freezed,Object? benePay = freezed,Object? transactionProductCode = freezed,Object? rate = freezed,Object? destinationAmount = freezed,Object? commission = freezed,Object? taxPercentage = freezed,Object? taxCollected = freezed,Object? payAmount = freezed,Object? receiveAmount = freezed,Object? productCode = freezed,Object? paymentMode = freezed,Object? paymentModeCode = freezed,Object? beneficiaryCode = freezed,Object? routeType = freezed,Object? status = freezed,Object? disbursalModeName = freezed,Object? createdOn = freezed,Object? routingBankName = freezed,Object? routingBankAccountCode = freezed,Object? disbursalModeCode = freezed,Object? disbursalModeCBCode = freezed,Object? moduleCode = freezed,Object? locationCode = freezed,Object? routingBankCode = freezed,Object? disbursalModeId = freezed,Object? memberCode = freezed,Object? transactionPinNumber = freezed,Object? decimalPlaces = freezed,}) {
  return _then(_self.copyWith(
transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,sourceCurrencyCode: freezed == sourceCurrencyCode ? _self.sourceCurrencyCode : sourceCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCurrencyName: freezed == sourceCurrencyName ? _self.sourceCurrencyName : sourceCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyCode: freezed == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyName: freezed == destinationCurrencyName ? _self.destinationCurrencyName : destinationCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryCode: freezed == sourceCountryCode ? _self.sourceCountryCode : sourceCountryCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryName: freezed == sourceCountryName ? _self.sourceCountryName : sourceCountryName // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryCode: freezed == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryName: freezed == destinationCountryName ? _self.destinationCountryName : destinationCountryName // ignore: cast_nullable_to_non_nullable
as String?,sourceAmount: freezed == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as double?,localAmount: freezed == localAmount ? _self.localAmount : localAmount // ignore: cast_nullable_to_non_nullable
as double?,benePay: freezed == benePay ? _self.benePay : benePay // ignore: cast_nullable_to_non_nullable
as int?,transactionProductCode: freezed == transactionProductCode ? _self.transactionProductCode : transactionProductCode // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,destinationAmount: freezed == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as int?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int?,taxCollected: freezed == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as int?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as int?,receiveAmount: freezed == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as int?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,paymentModeCode: freezed == paymentModeCode ? _self.paymentModeCode : paymentModeCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeName: freezed == disbursalModeName ? _self.disbursalModeName : disbursalModeName // ignore: cast_nullable_to_non_nullable
as String?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as DateTime?,routingBankName: freezed == routingBankName ? _self.routingBankName : routingBankName // ignore: cast_nullable_to_non_nullable
as String?,routingBankAccountCode: freezed == routingBankAccountCode ? _self.routingBankAccountCode : routingBankAccountCode // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeCode: freezed == disbursalModeCode ? _self.disbursalModeCode : disbursalModeCode // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeCBCode: freezed == disbursalModeCBCode ? _self.disbursalModeCBCode : disbursalModeCBCode // ignore: cast_nullable_to_non_nullable
as String?,moduleCode: freezed == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as int?,locationCode: freezed == locationCode ? _self.locationCode : locationCode // ignore: cast_nullable_to_non_nullable
as int?,routingBankCode: freezed == routingBankCode ? _self.routingBankCode : routingBankCode // ignore: cast_nullable_to_non_nullable
as int?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,transactionPinNumber: freezed == transactionPinNumber ? _self.transactionPinNumber : transactionPinNumber // ignore: cast_nullable_to_non_nullable
as String?,decimalPlaces: freezed == decimalPlaces ? _self.decimalPlaces : decimalPlaces // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TranList].
extension TranListPatterns on TranList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranList value)  $default,){
final _that = this;
switch (_that) {
case _TranList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranList value)?  $default,){
final _that = this;
switch (_that) {
case _TranList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "source_currency_name")  String? sourceCurrencyName, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "destination_currency_name")  String? destinationCurrencyName, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "source_country_name")  String? sourceCountryName, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "destination_country_name")  String? destinationCountryName, @JsonKey(name: "source_amount")  double? sourceAmount, @JsonKey(name: "local_amount")  double? localAmount, @JsonKey(name: "bene_pay")  int? benePay, @JsonKey(name: "transaction_product_code")  int? transactionProductCode, @JsonKey(name: "rate")  int? rate, @JsonKey(name: "destination_amount")  double? destinationAmount, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "tax_percentage")  int? taxPercentage, @JsonKey(name: "tax_collected")  int? taxCollected, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  int? receiveAmount, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "payment_mode_code")  String? paymentModeCode, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_name")  String? disbursalModeName, @JsonKey(name: "created_on")  DateTime? createdOn, @JsonKey(name: "routing_bank_name")  String? routingBankName, @JsonKey(name: "routing_bank_account_code")  String? routingBankAccountCode, @JsonKey(name: "disbursal_mode_code")  String? disbursalModeCode, @JsonKey(name: "disbursal_mode_c_b_code")  String? disbursalModeCBCode, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "location_code")  int? locationCode, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "transaction_pin_number")  String? transactionPinNumber, @JsonKey(name: "decimal_places")  int? decimalPlaces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranList() when $default != null:
return $default(_that.transactionReference,_that.transactionDate,_that.sourceCurrencyCode,_that.sourceCurrencyName,_that.destinationCurrencyCode,_that.destinationCurrencyName,_that.sourceCountryCode,_that.sourceCountryName,_that.destinationCountryCode,_that.destinationCountryName,_that.sourceAmount,_that.localAmount,_that.benePay,_that.transactionProductCode,_that.rate,_that.destinationAmount,_that.commission,_that.taxPercentage,_that.taxCollected,_that.payAmount,_that.receiveAmount,_that.productCode,_that.paymentMode,_that.paymentModeCode,_that.beneficiaryCode,_that.routeType,_that.status,_that.disbursalModeName,_that.createdOn,_that.routingBankName,_that.routingBankAccountCode,_that.disbursalModeCode,_that.disbursalModeCBCode,_that.moduleCode,_that.locationCode,_that.routingBankCode,_that.disbursalModeId,_that.memberCode,_that.transactionPinNumber,_that.decimalPlaces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "source_currency_name")  String? sourceCurrencyName, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "destination_currency_name")  String? destinationCurrencyName, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "source_country_name")  String? sourceCountryName, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "destination_country_name")  String? destinationCountryName, @JsonKey(name: "source_amount")  double? sourceAmount, @JsonKey(name: "local_amount")  double? localAmount, @JsonKey(name: "bene_pay")  int? benePay, @JsonKey(name: "transaction_product_code")  int? transactionProductCode, @JsonKey(name: "rate")  int? rate, @JsonKey(name: "destination_amount")  double? destinationAmount, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "tax_percentage")  int? taxPercentage, @JsonKey(name: "tax_collected")  int? taxCollected, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  int? receiveAmount, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "payment_mode_code")  String? paymentModeCode, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_name")  String? disbursalModeName, @JsonKey(name: "created_on")  DateTime? createdOn, @JsonKey(name: "routing_bank_name")  String? routingBankName, @JsonKey(name: "routing_bank_account_code")  String? routingBankAccountCode, @JsonKey(name: "disbursal_mode_code")  String? disbursalModeCode, @JsonKey(name: "disbursal_mode_c_b_code")  String? disbursalModeCBCode, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "location_code")  int? locationCode, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "transaction_pin_number")  String? transactionPinNumber, @JsonKey(name: "decimal_places")  int? decimalPlaces)  $default,) {final _that = this;
switch (_that) {
case _TranList():
return $default(_that.transactionReference,_that.transactionDate,_that.sourceCurrencyCode,_that.sourceCurrencyName,_that.destinationCurrencyCode,_that.destinationCurrencyName,_that.sourceCountryCode,_that.sourceCountryName,_that.destinationCountryCode,_that.destinationCountryName,_that.sourceAmount,_that.localAmount,_that.benePay,_that.transactionProductCode,_that.rate,_that.destinationAmount,_that.commission,_that.taxPercentage,_that.taxCollected,_that.payAmount,_that.receiveAmount,_that.productCode,_that.paymentMode,_that.paymentModeCode,_that.beneficiaryCode,_that.routeType,_that.status,_that.disbursalModeName,_that.createdOn,_that.routingBankName,_that.routingBankAccountCode,_that.disbursalModeCode,_that.disbursalModeCBCode,_that.moduleCode,_that.locationCode,_that.routingBankCode,_that.disbursalModeId,_that.memberCode,_that.transactionPinNumber,_that.decimalPlaces);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "source_currency_name")  String? sourceCurrencyName, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "destination_currency_name")  String? destinationCurrencyName, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "source_country_name")  String? sourceCountryName, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "destination_country_name")  String? destinationCountryName, @JsonKey(name: "source_amount")  double? sourceAmount, @JsonKey(name: "local_amount")  double? localAmount, @JsonKey(name: "bene_pay")  int? benePay, @JsonKey(name: "transaction_product_code")  int? transactionProductCode, @JsonKey(name: "rate")  int? rate, @JsonKey(name: "destination_amount")  double? destinationAmount, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "tax_percentage")  int? taxPercentage, @JsonKey(name: "tax_collected")  int? taxCollected, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  int? receiveAmount, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "payment_mode_code")  String? paymentModeCode, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_name")  String? disbursalModeName, @JsonKey(name: "created_on")  DateTime? createdOn, @JsonKey(name: "routing_bank_name")  String? routingBankName, @JsonKey(name: "routing_bank_account_code")  String? routingBankAccountCode, @JsonKey(name: "disbursal_mode_code")  String? disbursalModeCode, @JsonKey(name: "disbursal_mode_c_b_code")  String? disbursalModeCBCode, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "location_code")  int? locationCode, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "transaction_pin_number")  String? transactionPinNumber, @JsonKey(name: "decimal_places")  int? decimalPlaces)?  $default,) {final _that = this;
switch (_that) {
case _TranList() when $default != null:
return $default(_that.transactionReference,_that.transactionDate,_that.sourceCurrencyCode,_that.sourceCurrencyName,_that.destinationCurrencyCode,_that.destinationCurrencyName,_that.sourceCountryCode,_that.sourceCountryName,_that.destinationCountryCode,_that.destinationCountryName,_that.sourceAmount,_that.localAmount,_that.benePay,_that.transactionProductCode,_that.rate,_that.destinationAmount,_that.commission,_that.taxPercentage,_that.taxCollected,_that.payAmount,_that.receiveAmount,_that.productCode,_that.paymentMode,_that.paymentModeCode,_that.beneficiaryCode,_that.routeType,_that.status,_that.disbursalModeName,_that.createdOn,_that.routingBankName,_that.routingBankAccountCode,_that.disbursalModeCode,_that.disbursalModeCBCode,_that.moduleCode,_that.locationCode,_that.routingBankCode,_that.disbursalModeId,_that.memberCode,_that.transactionPinNumber,_that.decimalPlaces);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranList implements TranList {
  const _TranList({@JsonKey(name: "transaction_reference") this.transactionReference, @JsonKey(name: "transaction_date") this.transactionDate, @JsonKey(name: "source_currency_code") this.sourceCurrencyCode, @JsonKey(name: "source_currency_name") this.sourceCurrencyName, @JsonKey(name: "destination_currency_code") this.destinationCurrencyCode, @JsonKey(name: "destination_currency_name") this.destinationCurrencyName, @JsonKey(name: "source_country_code") this.sourceCountryCode, @JsonKey(name: "source_country_name") this.sourceCountryName, @JsonKey(name: "destination_country_code") this.destinationCountryCode, @JsonKey(name: "destination_country_name") this.destinationCountryName, @JsonKey(name: "source_amount") this.sourceAmount, @JsonKey(name: "local_amount") this.localAmount, @JsonKey(name: "bene_pay") this.benePay, @JsonKey(name: "transaction_product_code") this.transactionProductCode, @JsonKey(name: "rate") this.rate, @JsonKey(name: "destination_amount") this.destinationAmount, @JsonKey(name: "commission") this.commission, @JsonKey(name: "tax_percentage") this.taxPercentage, @JsonKey(name: "tax_collected") this.taxCollected, @JsonKey(name: "pay_amount") this.payAmount, @JsonKey(name: "receive_amount") this.receiveAmount, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "payment_mode") this.paymentMode, @JsonKey(name: "payment_mode_code") this.paymentModeCode, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "route_type") this.routeType, @JsonKey(name: "status") this.status, @JsonKey(name: "disbursal_mode_name") this.disbursalModeName, @JsonKey(name: "created_on") this.createdOn, @JsonKey(name: "routing_bank_name") this.routingBankName, @JsonKey(name: "routing_bank_account_code") this.routingBankAccountCode, @JsonKey(name: "disbursal_mode_code") this.disbursalModeCode, @JsonKey(name: "disbursal_mode_c_b_code") this.disbursalModeCBCode, @JsonKey(name: "module_code") this.moduleCode, @JsonKey(name: "location_code") this.locationCode, @JsonKey(name: "routing_bank_code") this.routingBankCode, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "member_code") this.memberCode, @JsonKey(name: "transaction_pin_number") this.transactionPinNumber, @JsonKey(name: "decimal_places") this.decimalPlaces});
  factory _TranList.fromJson(Map<String, dynamic> json) => _$TranListFromJson(json);

@override@JsonKey(name: "transaction_reference") final  int? transactionReference;
@override@JsonKey(name: "transaction_date") final  DateTime? transactionDate;
@override@JsonKey(name: "source_currency_code") final  String? sourceCurrencyCode;
@override@JsonKey(name: "source_currency_name") final  String? sourceCurrencyName;
@override@JsonKey(name: "destination_currency_code") final  String? destinationCurrencyCode;
@override@JsonKey(name: "destination_currency_name") final  String? destinationCurrencyName;
@override@JsonKey(name: "source_country_code") final  String? sourceCountryCode;
@override@JsonKey(name: "source_country_name") final  String? sourceCountryName;
@override@JsonKey(name: "destination_country_code") final  String? destinationCountryCode;
@override@JsonKey(name: "destination_country_name") final  String? destinationCountryName;
@override@JsonKey(name: "source_amount") final  double? sourceAmount;
@override@JsonKey(name: "local_amount") final  double? localAmount;
@override@JsonKey(name: "bene_pay") final  int? benePay;
@override@JsonKey(name: "transaction_product_code") final  int? transactionProductCode;
@override@JsonKey(name: "rate") final  int? rate;
@override@JsonKey(name: "destination_amount") final  double? destinationAmount;
@override@JsonKey(name: "commission") final  int? commission;
@override@JsonKey(name: "tax_percentage") final  int? taxPercentage;
@override@JsonKey(name: "tax_collected") final  int? taxCollected;
@override@JsonKey(name: "pay_amount") final  int? payAmount;
@override@JsonKey(name: "receive_amount") final  int? receiveAmount;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "payment_mode") final  String? paymentMode;
@override@JsonKey(name: "payment_mode_code") final  String? paymentModeCode;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "route_type") final  String? routeType;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "disbursal_mode_name") final  String? disbursalModeName;
@override@JsonKey(name: "created_on") final  DateTime? createdOn;
@override@JsonKey(name: "routing_bank_name") final  String? routingBankName;
@override@JsonKey(name: "routing_bank_account_code") final  String? routingBankAccountCode;
@override@JsonKey(name: "disbursal_mode_code") final  String? disbursalModeCode;
@override@JsonKey(name: "disbursal_mode_c_b_code") final  String? disbursalModeCBCode;
@override@JsonKey(name: "module_code") final  int? moduleCode;
@override@JsonKey(name: "location_code") final  int? locationCode;
@override@JsonKey(name: "routing_bank_code") final  int? routingBankCode;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "member_code") final  int? memberCode;
@override@JsonKey(name: "transaction_pin_number") final  String? transactionPinNumber;
@override@JsonKey(name: "decimal_places") final  int? decimalPlaces;

/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranListCopyWith<_TranList> get copyWith => __$TranListCopyWithImpl<_TranList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranList&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.sourceCurrencyCode, sourceCurrencyCode) || other.sourceCurrencyCode == sourceCurrencyCode)&&(identical(other.sourceCurrencyName, sourceCurrencyName) || other.sourceCurrencyName == sourceCurrencyName)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.destinationCurrencyName, destinationCurrencyName) || other.destinationCurrencyName == destinationCurrencyName)&&(identical(other.sourceCountryCode, sourceCountryCode) || other.sourceCountryCode == sourceCountryCode)&&(identical(other.sourceCountryName, sourceCountryName) || other.sourceCountryName == sourceCountryName)&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.destinationCountryName, destinationCountryName) || other.destinationCountryName == destinationCountryName)&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount)&&(identical(other.localAmount, localAmount) || other.localAmount == localAmount)&&(identical(other.benePay, benePay) || other.benePay == benePay)&&(identical(other.transactionProductCode, transactionProductCode) || other.transactionProductCode == transactionProductCode)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.paymentModeCode, paymentModeCode) || other.paymentModeCode == paymentModeCode)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeName, disbursalModeName) || other.disbursalModeName == disbursalModeName)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.routingBankName, routingBankName) || other.routingBankName == routingBankName)&&(identical(other.routingBankAccountCode, routingBankAccountCode) || other.routingBankAccountCode == routingBankAccountCode)&&(identical(other.disbursalModeCode, disbursalModeCode) || other.disbursalModeCode == disbursalModeCode)&&(identical(other.disbursalModeCBCode, disbursalModeCBCode) || other.disbursalModeCBCode == disbursalModeCBCode)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.locationCode, locationCode) || other.locationCode == locationCode)&&(identical(other.routingBankCode, routingBankCode) || other.routingBankCode == routingBankCode)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.transactionPinNumber, transactionPinNumber) || other.transactionPinNumber == transactionPinNumber)&&(identical(other.decimalPlaces, decimalPlaces) || other.decimalPlaces == decimalPlaces));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,transactionReference,transactionDate,sourceCurrencyCode,sourceCurrencyName,destinationCurrencyCode,destinationCurrencyName,sourceCountryCode,sourceCountryName,destinationCountryCode,destinationCountryName,sourceAmount,localAmount,benePay,transactionProductCode,rate,destinationAmount,commission,taxPercentage,taxCollected,payAmount,receiveAmount,productCode,paymentMode,paymentModeCode,beneficiaryCode,routeType,status,disbursalModeName,createdOn,routingBankName,routingBankAccountCode,disbursalModeCode,disbursalModeCBCode,moduleCode,locationCode,routingBankCode,disbursalModeId,memberCode,transactionPinNumber,decimalPlaces]);

@override
String toString() {
  return 'TranList(transactionReference: $transactionReference, transactionDate: $transactionDate, sourceCurrencyCode: $sourceCurrencyCode, sourceCurrencyName: $sourceCurrencyName, destinationCurrencyCode: $destinationCurrencyCode, destinationCurrencyName: $destinationCurrencyName, sourceCountryCode: $sourceCountryCode, sourceCountryName: $sourceCountryName, destinationCountryCode: $destinationCountryCode, destinationCountryName: $destinationCountryName, sourceAmount: $sourceAmount, localAmount: $localAmount, benePay: $benePay, transactionProductCode: $transactionProductCode, rate: $rate, destinationAmount: $destinationAmount, commission: $commission, taxPercentage: $taxPercentage, taxCollected: $taxCollected, payAmount: $payAmount, receiveAmount: $receiveAmount, productCode: $productCode, paymentMode: $paymentMode, paymentModeCode: $paymentModeCode, beneficiaryCode: $beneficiaryCode, routeType: $routeType, status: $status, disbursalModeName: $disbursalModeName, createdOn: $createdOn, routingBankName: $routingBankName, routingBankAccountCode: $routingBankAccountCode, disbursalModeCode: $disbursalModeCode, disbursalModeCBCode: $disbursalModeCBCode, moduleCode: $moduleCode, locationCode: $locationCode, routingBankCode: $routingBankCode, disbursalModeId: $disbursalModeId, memberCode: $memberCode, transactionPinNumber: $transactionPinNumber, decimalPlaces: $decimalPlaces)';
}


}

/// @nodoc
abstract mixin class _$TranListCopyWith<$Res> implements $TranListCopyWith<$Res> {
  factory _$TranListCopyWith(_TranList value, $Res Function(_TranList) _then) = __$TranListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "transaction_date") DateTime? transactionDate,@JsonKey(name: "source_currency_code") String? sourceCurrencyCode,@JsonKey(name: "source_currency_name") String? sourceCurrencyName,@JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,@JsonKey(name: "destination_currency_name") String? destinationCurrencyName,@JsonKey(name: "source_country_code") String? sourceCountryCode,@JsonKey(name: "source_country_name") String? sourceCountryName,@JsonKey(name: "destination_country_code") String? destinationCountryCode,@JsonKey(name: "destination_country_name") String? destinationCountryName,@JsonKey(name: "source_amount") double? sourceAmount,@JsonKey(name: "local_amount") double? localAmount,@JsonKey(name: "bene_pay") int? benePay,@JsonKey(name: "transaction_product_code") int? transactionProductCode,@JsonKey(name: "rate") int? rate,@JsonKey(name: "destination_amount") double? destinationAmount,@JsonKey(name: "commission") int? commission,@JsonKey(name: "tax_percentage") int? taxPercentage,@JsonKey(name: "tax_collected") int? taxCollected,@JsonKey(name: "pay_amount") int? payAmount,@JsonKey(name: "receive_amount") int? receiveAmount,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "payment_mode") String? paymentMode,@JsonKey(name: "payment_mode_code") String? paymentModeCode,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_name") String? disbursalModeName,@JsonKey(name: "created_on") DateTime? createdOn,@JsonKey(name: "routing_bank_name") String? routingBankName,@JsonKey(name: "routing_bank_account_code") String? routingBankAccountCode,@JsonKey(name: "disbursal_mode_code") String? disbursalModeCode,@JsonKey(name: "disbursal_mode_c_b_code") String? disbursalModeCBCode,@JsonKey(name: "module_code") int? moduleCode,@JsonKey(name: "location_code") int? locationCode,@JsonKey(name: "routing_bank_code") int? routingBankCode,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "transaction_pin_number") String? transactionPinNumber,@JsonKey(name: "decimal_places") int? decimalPlaces
});




}
/// @nodoc
class __$TranListCopyWithImpl<$Res>
    implements _$TranListCopyWith<$Res> {
  __$TranListCopyWithImpl(this._self, this._then);

  final _TranList _self;
  final $Res Function(_TranList) _then;

/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionReference = freezed,Object? transactionDate = freezed,Object? sourceCurrencyCode = freezed,Object? sourceCurrencyName = freezed,Object? destinationCurrencyCode = freezed,Object? destinationCurrencyName = freezed,Object? sourceCountryCode = freezed,Object? sourceCountryName = freezed,Object? destinationCountryCode = freezed,Object? destinationCountryName = freezed,Object? sourceAmount = freezed,Object? localAmount = freezed,Object? benePay = freezed,Object? transactionProductCode = freezed,Object? rate = freezed,Object? destinationAmount = freezed,Object? commission = freezed,Object? taxPercentage = freezed,Object? taxCollected = freezed,Object? payAmount = freezed,Object? receiveAmount = freezed,Object? productCode = freezed,Object? paymentMode = freezed,Object? paymentModeCode = freezed,Object? beneficiaryCode = freezed,Object? routeType = freezed,Object? status = freezed,Object? disbursalModeName = freezed,Object? createdOn = freezed,Object? routingBankName = freezed,Object? routingBankAccountCode = freezed,Object? disbursalModeCode = freezed,Object? disbursalModeCBCode = freezed,Object? moduleCode = freezed,Object? locationCode = freezed,Object? routingBankCode = freezed,Object? disbursalModeId = freezed,Object? memberCode = freezed,Object? transactionPinNumber = freezed,Object? decimalPlaces = freezed,}) {
  return _then(_TranList(
transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,sourceCurrencyCode: freezed == sourceCurrencyCode ? _self.sourceCurrencyCode : sourceCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCurrencyName: freezed == sourceCurrencyName ? _self.sourceCurrencyName : sourceCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyCode: freezed == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyName: freezed == destinationCurrencyName ? _self.destinationCurrencyName : destinationCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryCode: freezed == sourceCountryCode ? _self.sourceCountryCode : sourceCountryCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryName: freezed == sourceCountryName ? _self.sourceCountryName : sourceCountryName // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryCode: freezed == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryName: freezed == destinationCountryName ? _self.destinationCountryName : destinationCountryName // ignore: cast_nullable_to_non_nullable
as String?,sourceAmount: freezed == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as double?,localAmount: freezed == localAmount ? _self.localAmount : localAmount // ignore: cast_nullable_to_non_nullable
as double?,benePay: freezed == benePay ? _self.benePay : benePay // ignore: cast_nullable_to_non_nullable
as int?,transactionProductCode: freezed == transactionProductCode ? _self.transactionProductCode : transactionProductCode // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,destinationAmount: freezed == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as int?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int?,taxCollected: freezed == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as int?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as int?,receiveAmount: freezed == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as int?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,paymentModeCode: freezed == paymentModeCode ? _self.paymentModeCode : paymentModeCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeName: freezed == disbursalModeName ? _self.disbursalModeName : disbursalModeName // ignore: cast_nullable_to_non_nullable
as String?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as DateTime?,routingBankName: freezed == routingBankName ? _self.routingBankName : routingBankName // ignore: cast_nullable_to_non_nullable
as String?,routingBankAccountCode: freezed == routingBankAccountCode ? _self.routingBankAccountCode : routingBankAccountCode // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeCode: freezed == disbursalModeCode ? _self.disbursalModeCode : disbursalModeCode // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeCBCode: freezed == disbursalModeCBCode ? _self.disbursalModeCBCode : disbursalModeCBCode // ignore: cast_nullable_to_non_nullable
as String?,moduleCode: freezed == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as int?,locationCode: freezed == locationCode ? _self.locationCode : locationCode // ignore: cast_nullable_to_non_nullable
as int?,routingBankCode: freezed == routingBankCode ? _self.routingBankCode : routingBankCode // ignore: cast_nullable_to_non_nullable
as int?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,transactionPinNumber: freezed == transactionPinNumber ? _self.transactionPinNumber : transactionPinNumber // ignore: cast_nullable_to_non_nullable
as String?,decimalPlaces: freezed == decimalPlaces ? _self.decimalPlaces : decimalPlaces // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
