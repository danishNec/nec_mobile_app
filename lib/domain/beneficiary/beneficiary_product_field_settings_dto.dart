import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_product_field_settings_dto.freezed.dart';
part 'beneficiary_product_field_settings_dto.g.dart';

BeneficiaryProductFieldSettingsDto beneficiaryProductFieldSettingsDtoFromJson(String str) => BeneficiaryProductFieldSettingsDto.fromJson(json.decode(str));

String beneficiaryProductFieldSettingsDtoToJson(BeneficiaryProductFieldSettingsDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryProductFieldSettingsDto with _$BeneficiaryProductFieldSettingsDto {
  const factory BeneficiaryProductFieldSettingsDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "data")
    Data? data,
    @JsonKey(name: "time_stamp")
    DateTime? timeStamp,
    @JsonKey(name: "version")
    String? version,
  }) = _BeneficiaryProductFieldSettingsDto;

  factory BeneficiaryProductFieldSettingsDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryProductFieldSettingsDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "all_product_field_setting_list")
    AllProductFieldSettingList? allProductFieldSettingList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class AllProductFieldSettingList with _$AllProductFieldSettingList {
  const factory AllProductFieldSettingList({
    @JsonKey(name: "beneficiary")
    List<Beneficiary>? beneficiary,
  }) = _AllProductFieldSettingList;

  factory AllProductFieldSettingList.fromJson(Map<String, dynamic> json) => _$AllProductFieldSettingListFromJson(json);
}

@freezed
sealed class Beneficiary with _$Beneficiary {
  const factory Beneficiary({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "product_code")
    int? productCode,
    @JsonKey(name: "display_order")
    int? displayOrder,
    @JsonKey(name: "field_name")
    String? fieldName,
    @JsonKey(name: "display_field_name")
    String? displayFieldName,
    @JsonKey(name: "minimum_length")
    int? minimumLength,
    @JsonKey(name: "maximum_length")
    int? maximumLength,
    @JsonKey(name: "supported_data_type")
    String? supportedDataType,
    @JsonKey(name: "type")
    String? type,
    @JsonKey(name: "is_type_system_reserved")
    bool? isTypeSystemReserved,
    @JsonKey(name: "enabled")
    bool? enabled,
    @JsonKey(name: "mandatory")
    bool? mandatory,
    @JsonKey(name: "visible")
    bool? visible,
    @JsonKey(name: "default_value")
    String? defaultValue,
    @JsonKey(name: "allowed_special_characters")
    String? allowedSpecialCharacters,
    @JsonKey(name: "special_character_checking_rqrd")
    bool? specialCharacterCheckingRqrd,
    @JsonKey(name: "is_system_reserve")
    bool? isSystemReserve,
    @JsonKey(name: "member_section")
    String? memberSection,
    @JsonKey(name: "w_u_combo_order")
    int? wUComboOrder,
    @JsonKey(name: "w_u_field_settings_i_d")
    int? wUFieldSettingsID,
    @JsonKey(name: "is_arabic")
    bool? isArabic,
  }) = _Beneficiary;

  factory Beneficiary.fromJson(Map<String, dynamic> json) => _$BeneficiaryFromJson(json);
}
