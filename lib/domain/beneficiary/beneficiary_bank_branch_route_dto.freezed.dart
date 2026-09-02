// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_bank_branch_route_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryBankBranchRouteDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of BeneficiaryBankBranchRouteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryBankBranchRouteDtoCopyWith<BeneficiaryBankBranchRouteDto> get copyWith => _$BeneficiaryBankBranchRouteDtoCopyWithImpl<BeneficiaryBankBranchRouteDto>(this as BeneficiaryBankBranchRouteDto, _$identity);

  /// Serializes this BeneficiaryBankBranchRouteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryBankBranchRouteDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryBankBranchRouteDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryBankBranchRouteDtoCopyWith<$Res>  {
  factory $BeneficiaryBankBranchRouteDtoCopyWith(BeneficiaryBankBranchRouteDto value, $Res Function(BeneficiaryBankBranchRouteDto) _then) = _$BeneficiaryBankBranchRouteDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryBankBranchRouteDtoCopyWithImpl<$Res>
    implements $BeneficiaryBankBranchRouteDtoCopyWith<$Res> {
  _$BeneficiaryBankBranchRouteDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryBankBranchRouteDto _self;
  final $Res Function(BeneficiaryBankBranchRouteDto) _then;

/// Create a copy of BeneficiaryBankBranchRouteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BeneficiaryBankBranchRouteDto
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


/// Adds pattern-matching-related methods to [BeneficiaryBankBranchRouteDto].
extension BeneficiaryBankBranchRouteDtoPatterns on BeneficiaryBankBranchRouteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryBankBranchRouteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryBankBranchRouteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryBankBranchRouteDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryBankBranchRouteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryBankBranchRouteDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryBankBranchRouteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryBankBranchRouteDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryBankBranchRouteDto():
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryBankBranchRouteDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryBankBranchRouteDto implements BeneficiaryBankBranchRouteDto {
  const _BeneficiaryBankBranchRouteDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _BeneficiaryBankBranchRouteDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryBankBranchRouteDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of BeneficiaryBankBranchRouteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryBankBranchRouteDtoCopyWith<_BeneficiaryBankBranchRouteDto> get copyWith => __$BeneficiaryBankBranchRouteDtoCopyWithImpl<_BeneficiaryBankBranchRouteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryBankBranchRouteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryBankBranchRouteDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryBankBranchRouteDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryBankBranchRouteDtoCopyWith<$Res> implements $BeneficiaryBankBranchRouteDtoCopyWith<$Res> {
  factory _$BeneficiaryBankBranchRouteDtoCopyWith(_BeneficiaryBankBranchRouteDto value, $Res Function(_BeneficiaryBankBranchRouteDto) _then) = __$BeneficiaryBankBranchRouteDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryBankBranchRouteDtoCopyWithImpl<$Res>
    implements _$BeneficiaryBankBranchRouteDtoCopyWith<$Res> {
  __$BeneficiaryBankBranchRouteDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryBankBranchRouteDto _self;
  final $Res Function(_BeneficiaryBankBranchRouteDto) _then;

/// Create a copy of BeneficiaryBankBranchRouteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryBankBranchRouteDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryBankBranchRouteDto
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

@JsonKey(name: "beneficiary_bank_details") BeneficiaryBDetails? get beneficiaryBankDetails;@JsonKey(name: "beneficiary_branch_details") BeneficiaryBDetails? get beneficiaryBranchDetails;@JsonKey(name: "route_code") String? get routeCode;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.beneficiaryBankDetails, beneficiaryBankDetails) || other.beneficiaryBankDetails == beneficiaryBankDetails)&&(identical(other.beneficiaryBranchDetails, beneficiaryBranchDetails) || other.beneficiaryBranchDetails == beneficiaryBranchDetails)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beneficiaryBankDetails,beneficiaryBranchDetails,routeCode);

@override
String toString() {
  return 'Data(beneficiaryBankDetails: $beneficiaryBankDetails, beneficiaryBranchDetails: $beneficiaryBranchDetails, routeCode: $routeCode)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary_bank_details") BeneficiaryBDetails? beneficiaryBankDetails,@JsonKey(name: "beneficiary_branch_details") BeneficiaryBDetails? beneficiaryBranchDetails,@JsonKey(name: "route_code") String? routeCode
});


$BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBankDetails;$BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBranchDetails;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaryBankDetails = freezed,Object? beneficiaryBranchDetails = freezed,Object? routeCode = freezed,}) {
  return _then(_self.copyWith(
beneficiaryBankDetails: freezed == beneficiaryBankDetails ? _self.beneficiaryBankDetails : beneficiaryBankDetails // ignore: cast_nullable_to_non_nullable
as BeneficiaryBDetails?,beneficiaryBranchDetails: freezed == beneficiaryBranchDetails ? _self.beneficiaryBranchDetails : beneficiaryBranchDetails // ignore: cast_nullable_to_non_nullable
as BeneficiaryBDetails?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBankDetails {
    if (_self.beneficiaryBankDetails == null) {
    return null;
  }

  return $BeneficiaryBDetailsCopyWith<$Res>(_self.beneficiaryBankDetails!, (value) {
    return _then(_self.copyWith(beneficiaryBankDetails: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBranchDetails {
    if (_self.beneficiaryBranchDetails == null) {
    return null;
  }

  return $BeneficiaryBDetailsCopyWith<$Res>(_self.beneficiaryBranchDetails!, (value) {
    return _then(_self.copyWith(beneficiaryBranchDetails: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_bank_details")  BeneficiaryBDetails? beneficiaryBankDetails, @JsonKey(name: "beneficiary_branch_details")  BeneficiaryBDetails? beneficiaryBranchDetails, @JsonKey(name: "route_code")  String? routeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryBankDetails,_that.beneficiaryBranchDetails,_that.routeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_bank_details")  BeneficiaryBDetails? beneficiaryBankDetails, @JsonKey(name: "beneficiary_branch_details")  BeneficiaryBDetails? beneficiaryBranchDetails, @JsonKey(name: "route_code")  String? routeCode)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.beneficiaryBankDetails,_that.beneficiaryBranchDetails,_that.routeCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_bank_details")  BeneficiaryBDetails? beneficiaryBankDetails, @JsonKey(name: "beneficiary_branch_details")  BeneficiaryBDetails? beneficiaryBranchDetails, @JsonKey(name: "route_code")  String? routeCode)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryBankDetails,_that.beneficiaryBranchDetails,_that.routeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "beneficiary_bank_details") this.beneficiaryBankDetails, @JsonKey(name: "beneficiary_branch_details") this.beneficiaryBranchDetails, @JsonKey(name: "route_code") this.routeCode});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "beneficiary_bank_details") final  BeneficiaryBDetails? beneficiaryBankDetails;
@override@JsonKey(name: "beneficiary_branch_details") final  BeneficiaryBDetails? beneficiaryBranchDetails;
@override@JsonKey(name: "route_code") final  String? routeCode;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.beneficiaryBankDetails, beneficiaryBankDetails) || other.beneficiaryBankDetails == beneficiaryBankDetails)&&(identical(other.beneficiaryBranchDetails, beneficiaryBranchDetails) || other.beneficiaryBranchDetails == beneficiaryBranchDetails)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beneficiaryBankDetails,beneficiaryBranchDetails,routeCode);

@override
String toString() {
  return 'Data(beneficiaryBankDetails: $beneficiaryBankDetails, beneficiaryBranchDetails: $beneficiaryBranchDetails, routeCode: $routeCode)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary_bank_details") BeneficiaryBDetails? beneficiaryBankDetails,@JsonKey(name: "beneficiary_branch_details") BeneficiaryBDetails? beneficiaryBranchDetails,@JsonKey(name: "route_code") String? routeCode
});


@override $BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBankDetails;@override $BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBranchDetails;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaryBankDetails = freezed,Object? beneficiaryBranchDetails = freezed,Object? routeCode = freezed,}) {
  return _then(_Data(
beneficiaryBankDetails: freezed == beneficiaryBankDetails ? _self.beneficiaryBankDetails : beneficiaryBankDetails // ignore: cast_nullable_to_non_nullable
as BeneficiaryBDetails?,beneficiaryBranchDetails: freezed == beneficiaryBranchDetails ? _self.beneficiaryBranchDetails : beneficiaryBranchDetails // ignore: cast_nullable_to_non_nullable
as BeneficiaryBDetails?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBankDetails {
    if (_self.beneficiaryBankDetails == null) {
    return null;
  }

  return $BeneficiaryBDetailsCopyWith<$Res>(_self.beneficiaryBankDetails!, (value) {
    return _then(_self.copyWith(beneficiaryBankDetails: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBDetailsCopyWith<$Res>? get beneficiaryBranchDetails {
    if (_self.beneficiaryBranchDetails == null) {
    return null;
  }

  return $BeneficiaryBDetailsCopyWith<$Res>(_self.beneficiaryBranchDetails!, (value) {
    return _then(_self.copyWith(beneficiaryBranchDetails: value));
  });
}
}


/// @nodoc
mixin _$BeneficiaryBDetails {

@JsonKey(name: "code") String? get code;@JsonKey(name: "name") String? get name;@JsonKey(name: "is_default") bool? get isDefault;
/// Create a copy of BeneficiaryBDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryBDetailsCopyWith<BeneficiaryBDetails> get copyWith => _$BeneficiaryBDetailsCopyWithImpl<BeneficiaryBDetails>(this as BeneficiaryBDetails, _$identity);

  /// Serializes this BeneficiaryBDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryBDetails&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'BeneficiaryBDetails(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryBDetailsCopyWith<$Res>  {
  factory $BeneficiaryBDetailsCopyWith(BeneficiaryBDetails value, $Res Function(BeneficiaryBDetails) _then) = _$BeneficiaryBDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class _$BeneficiaryBDetailsCopyWithImpl<$Res>
    implements $BeneficiaryBDetailsCopyWith<$Res> {
  _$BeneficiaryBDetailsCopyWithImpl(this._self, this._then);

  final BeneficiaryBDetails _self;
  final $Res Function(BeneficiaryBDetails) _then;

/// Create a copy of BeneficiaryBDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,Object? isDefault = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryBDetails].
extension BeneficiaryBDetailsPatterns on BeneficiaryBDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryBDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryBDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryBDetails value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryBDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryBDetails value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryBDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "name")  String? name, @JsonKey(name: "is_default")  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryBDetails() when $default != null:
return $default(_that.code,_that.name,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "name")  String? name, @JsonKey(name: "is_default")  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryBDetails():
return $default(_that.code,_that.name,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "name")  String? name, @JsonKey(name: "is_default")  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryBDetails() when $default != null:
return $default(_that.code,_that.name,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryBDetails implements BeneficiaryBDetails {
  const _BeneficiaryBDetails({@JsonKey(name: "code") this.code, @JsonKey(name: "name") this.name, @JsonKey(name: "is_default") this.isDefault});
  factory _BeneficiaryBDetails.fromJson(Map<String, dynamic> json) => _$BeneficiaryBDetailsFromJson(json);

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "is_default") final  bool? isDefault;

/// Create a copy of BeneficiaryBDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryBDetailsCopyWith<_BeneficiaryBDetails> get copyWith => __$BeneficiaryBDetailsCopyWithImpl<_BeneficiaryBDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryBDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryBDetails&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'BeneficiaryBDetails(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryBDetailsCopyWith<$Res> implements $BeneficiaryBDetailsCopyWith<$Res> {
  factory _$BeneficiaryBDetailsCopyWith(_BeneficiaryBDetails value, $Res Function(_BeneficiaryBDetails) _then) = __$BeneficiaryBDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class __$BeneficiaryBDetailsCopyWithImpl<$Res>
    implements _$BeneficiaryBDetailsCopyWith<$Res> {
  __$BeneficiaryBDetailsCopyWithImpl(this._self, this._then);

  final _BeneficiaryBDetails _self;
  final $Res Function(_BeneficiaryBDetails) _then;

/// Create a copy of BeneficiaryBDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? isDefault = freezed,}) {
  return _then(_BeneficiaryBDetails(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
