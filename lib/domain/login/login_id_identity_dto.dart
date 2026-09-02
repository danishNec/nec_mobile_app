import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_id_identity_dto.freezed.dart';
part 'login_id_identity_dto.g.dart';

LoginIdIdentityDto loginIdIdentityDtoFromJson(String str) => LoginIdIdentityDto.fromJson(json.decode(str));

String loginIdIdentityDtoToJson(LoginIdIdentityDto data) => json.encode(data.toJson());

@freezed
sealed class LoginIdIdentityDto with _$LoginIdIdentityDto {
  const factory LoginIdIdentityDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "data")
    Data? data,
  }) = _LoginIdIdentityDto;

  factory LoginIdIdentityDto.fromJson(Map<String, dynamic> json) => _$LoginIdIdentityDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "identity_types_list")
    List<CountryListElement>? identityTypesList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class CountryListElement with _$CountryListElement {
  const factory CountryListElement({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _CountryListElement;

  factory CountryListElement.fromJson(Map<String, dynamic> json) => _$CountryListElementFromJson(json);
}
