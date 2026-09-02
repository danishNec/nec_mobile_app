import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_combo_list_dto.freezed.dart';
part 'beneficiary_combo_list_dto.g.dart';

BeneficiaryComboListDto beneficiaryComboListDtoFromJson(String str) => BeneficiaryComboListDto.fromJson(json.decode(str));

String beneficiaryComboListDtoToJson(BeneficiaryComboListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryComboListDto with _$BeneficiaryComboListDto {
  const factory BeneficiaryComboListDto({
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
  }) = _BeneficiaryComboListDto;

  factory BeneficiaryComboListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryComboListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "salutation_list")
    List<AirportListElement>? salutationList,
    @JsonKey(name: "country_list")
    List<AirportListElement>? countryList,
    @JsonKey(name: "airport_list")
    List<AirportListElement>? airportList,
    @JsonKey(name: "profession_list")
    List<AirportListElement>? professionList,
    @JsonKey(name: "gender_list")
    List<AirportListElement>? genderList,
    @JsonKey(name: "residency_type_list")
    List<AirportListElement>? residencyTypeList,
    @JsonKey(name: "member_category_list")
    List<AirportListElement>? memberCategoryList,
    @JsonKey(name: "relationship_list")
    List<AirportListElement>? relationshipList,
    @JsonKey(name: "beneficiary_bank_list")
    List<AirportListElement>? beneficiaryBankList,
    @JsonKey(name: "beneficiary_transfer_type_list")
    List<AirportListElement>? beneficiaryTransferTypeList,
    @JsonKey(name: "route_type_list")
    List<AirportListElement>? routeTypeList,
    @JsonKey(name: "identity_types_list")
    List<AirportListElement>? identityTypesList,
    @JsonKey(name: "beneficiary_bank_account_type_list")
    List<AirportListElement>? beneficiaryBankAccountTypeList,
    String? defaultIdentityType,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class AirportListElement with _$AirportListElement {
  const factory AirportListElement({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _AirportListElement;

  factory AirportListElement.fromJson(Map<String, dynamic> json) => _$AirportListElementFromJson(json);
}
