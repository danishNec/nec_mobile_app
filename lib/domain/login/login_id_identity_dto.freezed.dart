// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_id_identity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginIdIdentityDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "data") Data? get data;
/// Create a copy of LoginIdIdentityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginIdIdentityDtoCopyWith<LoginIdIdentityDto> get copyWith => _$LoginIdIdentityDtoCopyWithImpl<LoginIdIdentityDto>(this as LoginIdIdentityDto, _$identity);

  /// Serializes this LoginIdIdentityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginIdIdentityDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'LoginIdIdentityDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginIdIdentityDtoCopyWith<$Res>  {
  factory $LoginIdIdentityDtoCopyWith(LoginIdIdentityDto value, $Res Function(LoginIdIdentityDto) _then) = _$LoginIdIdentityDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$LoginIdIdentityDtoCopyWithImpl<$Res>
    implements $LoginIdIdentityDtoCopyWith<$Res> {
  _$LoginIdIdentityDtoCopyWithImpl(this._self, this._then);

  final LoginIdIdentityDto _self;
  final $Res Function(LoginIdIdentityDto) _then;

/// Create a copy of LoginIdIdentityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of LoginIdIdentityDto
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


/// Adds pattern-matching-related methods to [LoginIdIdentityDto].
extension LoginIdIdentityDtoPatterns on LoginIdIdentityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginIdIdentityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginIdIdentityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginIdIdentityDto value)  $default,){
final _that = this;
switch (_that) {
case _LoginIdIdentityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginIdIdentityDto value)?  $default,){
final _that = this;
switch (_that) {
case _LoginIdIdentityDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginIdIdentityDto() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
switch (_that) {
case _LoginIdIdentityDto():
return $default(_that.success,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _LoginIdIdentityDto() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginIdIdentityDto implements LoginIdIdentityDto {
  const _LoginIdIdentityDto({@JsonKey(name: "success") this.success, @JsonKey(name: "data") this.data});
  factory _LoginIdIdentityDto.fromJson(Map<String, dynamic> json) => _$LoginIdIdentityDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of LoginIdIdentityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginIdIdentityDtoCopyWith<_LoginIdIdentityDto> get copyWith => __$LoginIdIdentityDtoCopyWithImpl<_LoginIdIdentityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginIdIdentityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginIdIdentityDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'LoginIdIdentityDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoginIdIdentityDtoCopyWith<$Res> implements $LoginIdIdentityDtoCopyWith<$Res> {
  factory _$LoginIdIdentityDtoCopyWith(_LoginIdIdentityDto value, $Res Function(_LoginIdIdentityDto) _then) = __$LoginIdIdentityDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$LoginIdIdentityDtoCopyWithImpl<$Res>
    implements _$LoginIdIdentityDtoCopyWith<$Res> {
  __$LoginIdIdentityDtoCopyWithImpl(this._self, this._then);

  final _LoginIdIdentityDto _self;
  final $Res Function(_LoginIdIdentityDto) _then;

/// Create a copy of LoginIdIdentityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_LoginIdIdentityDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of LoginIdIdentityDto
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

@JsonKey(name: "identity_types_list") List<CountryListElement>? get identityTypesList;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.identityTypesList, identityTypesList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(identityTypesList));

@override
String toString() {
  return 'Data(identityTypesList: $identityTypesList)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "identity_types_list") List<CountryListElement>? identityTypesList
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
@pragma('vm:prefer-inline') @override $Res call({Object? identityTypesList = freezed,}) {
  return _then(_self.copyWith(
identityTypesList: freezed == identityTypesList ? _self.identityTypesList : identityTypesList // ignore: cast_nullable_to_non_nullable
as List<CountryListElement>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "identity_types_list")  List<CountryListElement>? identityTypesList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.identityTypesList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "identity_types_list")  List<CountryListElement>? identityTypesList)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.identityTypesList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "identity_types_list")  List<CountryListElement>? identityTypesList)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.identityTypesList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "identity_types_list") final  List<CountryListElement>? identityTypesList}): _identityTypesList = identityTypesList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<CountryListElement>? _identityTypesList;
@override@JsonKey(name: "identity_types_list") List<CountryListElement>? get identityTypesList {
  final value = _identityTypesList;
  if (value == null) return null;
  if (_identityTypesList is EqualUnmodifiableListView) return _identityTypesList;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._identityTypesList, _identityTypesList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_identityTypesList));

@override
String toString() {
  return 'Data(identityTypesList: $identityTypesList)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "identity_types_list") List<CountryListElement>? identityTypesList
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
@override @pragma('vm:prefer-inline') $Res call({Object? identityTypesList = freezed,}) {
  return _then(_Data(
identityTypesList: freezed == identityTypesList ? _self._identityTypesList : identityTypesList // ignore: cast_nullable_to_non_nullable
as List<CountryListElement>?,
  ));
}


}


/// @nodoc
mixin _$CountryListElement {

@JsonKey(name: "code") String? get code;@JsonKey(name: "name") String? get name;@JsonKey(name: "is_default") bool? get isDefault;
/// Create a copy of CountryListElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryListElementCopyWith<CountryListElement> get copyWith => _$CountryListElementCopyWithImpl<CountryListElement>(this as CountryListElement, _$identity);

  /// Serializes this CountryListElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryListElement&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'CountryListElement(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $CountryListElementCopyWith<$Res>  {
  factory $CountryListElementCopyWith(CountryListElement value, $Res Function(CountryListElement) _then) = _$CountryListElementCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class _$CountryListElementCopyWithImpl<$Res>
    implements $CountryListElementCopyWith<$Res> {
  _$CountryListElementCopyWithImpl(this._self, this._then);

  final CountryListElement _self;
  final $Res Function(CountryListElement) _then;

/// Create a copy of CountryListElement
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


/// Adds pattern-matching-related methods to [CountryListElement].
extension CountryListElementPatterns on CountryListElement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryListElement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryListElement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryListElement value)  $default,){
final _that = this;
switch (_that) {
case _CountryListElement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryListElement value)?  $default,){
final _that = this;
switch (_that) {
case _CountryListElement() when $default != null:
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
case _CountryListElement() when $default != null:
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
case _CountryListElement():
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
case _CountryListElement() when $default != null:
return $default(_that.code,_that.name,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryListElement implements CountryListElement {
  const _CountryListElement({@JsonKey(name: "code") this.code, @JsonKey(name: "name") this.name, @JsonKey(name: "is_default") this.isDefault});
  factory _CountryListElement.fromJson(Map<String, dynamic> json) => _$CountryListElementFromJson(json);

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "is_default") final  bool? isDefault;

/// Create a copy of CountryListElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryListElementCopyWith<_CountryListElement> get copyWith => __$CountryListElementCopyWithImpl<_CountryListElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryListElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryListElement&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'CountryListElement(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$CountryListElementCopyWith<$Res> implements $CountryListElementCopyWith<$Res> {
  factory _$CountryListElementCopyWith(_CountryListElement value, $Res Function(_CountryListElement) _then) = __$CountryListElementCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class __$CountryListElementCopyWithImpl<$Res>
    implements _$CountryListElementCopyWith<$Res> {
  __$CountryListElementCopyWithImpl(this._self, this._then);

  final _CountryListElement _self;
  final $Res Function(_CountryListElement) _then;

/// Create a copy of CountryListElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? isDefault = freezed,}) {
  return _then(_CountryListElement(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
