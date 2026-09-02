import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_combo_dto.freezed.dart';
part 'common_combo_dto.g.dart';

@freezed
sealed class CommonComboDto with _$CommonComboDto {
  const factory CommonComboDto({
    @JsonKey(name: "country_list")
    @Default([])
    List<ComboItem> countryList,

    @JsonKey(name: "gender_list")
    @Default([])
    List<ComboItem> genderList,

    @JsonKey(name: "residency_type_list")
    @Default([])
    List<ComboItem> residencyTypeList,

    @JsonKey(name: "profession_list")
    @Default([])
    List<ComboItem> professionList,

    @JsonKey(name: "salutation_list")
    @Default([])
    List<ComboItem> salutationList,

    @JsonKey(name: "airport_list")
    @Default([])
    List<ComboItem> airportList,

    @JsonKey(name: "beneficiary_bank_account_type_list")
    @Default([])
    List<ComboItem> beneficiaryBankAccountTypeList,

    @JsonKey(name: "relationship_list")
    @Default([])
    List<ComboItem> relationshipList,

    @JsonKey(name: "member_category_list")
    @Default([])
    List<ComboItem> memberCategoryList,

    @JsonKey(name: "route_type_list")
    @Default([])
    List<ComboItem> routeTypeList,

    @JsonKey(name: "beneficiary_branch_list")
    @Default([])
    List<ComboItem> beneficiaryBranchList,

    @JsonKey(name: "beneficiary_route_code_list")
    @Default([])
    List<ComboItem> beneficiaryRouteCodeList,

    @JsonKey(name: "beneficiary_bank_list")
    @Default([])
    List<ComboItem> beneficiaryBankList,
  }) = _CommonComboDto;

  factory CommonComboDto.fromJson(Map<String, dynamic> json) =>
      _$CommonComboDtoFromJson(json);
}

@freezed
sealed class ComboItem with _$ComboItem {
  const factory ComboItem({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "name") required String name,
  }) = _ComboItem;

  factory ComboItem.fromJson(Map<String, dynamic> json) =>
      _$ComboItemFromJson(json);
}