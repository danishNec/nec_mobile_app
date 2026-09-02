import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_recent_beneficiaries_dto.freezed.dart';
part 'home_recent_beneficiaries_dto.g.dart';

HomeRecentBeneficiariesDto homeRecentBeneficiariesDtoFromJson(String str) => HomeRecentBeneficiariesDto.fromJson(json.decode(str));

String homeRecentBeneficiariesDtoToJson(HomeRecentBeneficiariesDto data) => json.encode(data.toJson());

@freezed
sealed class HomeRecentBeneficiariesDto with _$HomeRecentBeneficiariesDto {
  const factory HomeRecentBeneficiariesDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
    @JsonKey(name: "time_stamp")
    DateTime? timeStamp,
    @JsonKey(name: "version")
    String? version,
  }) = _HomeRecentBeneficiariesDto;

  factory HomeRecentBeneficiariesDto.fromJson(Map<String, dynamic> json) => _$HomeRecentBeneficiariesDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_list")
    List<RecentBeneficiaryList>? beneficiaryList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class RecentBeneficiaryList with _$RecentBeneficiaryList {
  const factory RecentBeneficiaryList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "transaction_reference")
    int? transactionReference,
    @JsonKey(name: "beneficiary_code")
    int? beneficiaryCode,
    @JsonKey(name: "beneficiary_salutation")
    String? beneficiarySalutation,
    @JsonKey(name: "beneficiary_gender")
    String? beneficiaryGender,
    @JsonKey(name: "beneficiary_first_name")
    String? beneficiaryFirstName,
    @JsonKey(name: "beneficiary_middle_name")
    String? beneficiaryMiddleName,
    @JsonKey(name: "beneficiary_last_name")
    String? beneficiaryLastName,
    @JsonKey(name: "beneficiary_first_name_unicode")
    String? beneficiaryFirstNameUnicode,
    @JsonKey(name: "beneficiary_middle_name_unicode")
    String? beneficiaryMiddleNameUnicode,
    @JsonKey(name: "beneficiary_last_name_unicode")
    String? beneficiaryLastNameUnicode,
    @JsonKey(name: "beneficiary_address1")
    String? beneficiaryAddress1,
    @JsonKey(name: "beneficiary_address2")
    String? beneficiaryAddress2,
    @JsonKey(name: "beneficiary_country_code")
    String? beneficiaryCountryCode,
    @JsonKey(name: "beneficiary_country_name")
    String? beneficiaryCountryName,
    @JsonKey(name: "beneficiary_nationality_code")
    String? beneficiaryNationalityCode,
    @JsonKey(name: "beneficiary_bank_code")
    String? beneficiaryBankCode,
    @JsonKey(name: "beneficiary_bank_name")
    String? beneficiaryBankName,
    @JsonKey(name: "beneficiary_branch_code")
    String? beneficiaryBranchCode,
    @JsonKey(name: "beneficary_relation")
    String? beneficaryRelation,
    @JsonKey(name: "beneficary_relation_name")
    String? beneficaryRelationName,
    @JsonKey(name: "beneficiary_bank_account_number")
    String? beneficiaryBankAccountNumber,
    @JsonKey(name: "beneficiary_category_code")
    String? beneficiaryCategoryCode,
    @JsonKey(name: "route_code")
    String? routeCode,
    @JsonKey(name: "product_code")
    int? productCode,
    @JsonKey(name: "product_name")
    String? productName,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "disbursal_mode_id")
    int? disbursalModeId,
    @JsonKey(name: "disbursal_mode")
    String? disbursalMode,
    @JsonKey(name: "currency_code")
    String? currencyCode,
    @JsonKey(name: "income_source_name")
    String? incomeSourceName,
    @JsonKey(name: "purpose_name")
    String? purposeName,
    @JsonKey(name: "source_of_fund")
    String? sourceOfFund,
    @JsonKey(name: "purpose_of_transaction")
    String? purposeOfTransaction,
    @JsonKey(name: "beneficiary_category")
    String? beneficiaryCategory,
    @JsonKey(name: "module_code")
    int? moduleCode,
    @JsonKey(name: "routing_bank_code")
    int? routingBankCode,
    @JsonKey(name: "flag_url")
    String? flagUrl,
    @JsonKey(name: "beneficiary_state_id")
    int? beneficiaryStateId,
    @JsonKey(name: "tran_list")
    List<TranList>? tranList,
    @JsonKey(name: "beneficiary_state")
    String? beneficiaryState,
    @JsonKey(name: "beneficiary_city")
    String? beneficiaryCity,
  }) = _RecentBeneficiaryList;

  factory RecentBeneficiaryList.fromJson(Map<String, dynamic> json) => _$RecentBeneficiaryListFromJson(json);
}

@freezed
sealed class TranList with _$TranList {
  const factory TranList({
    @JsonKey(name: "transaction_reference")
    int? transactionReference,
    @JsonKey(name: "transaction_date")
    DateTime? transactionDate,
    @JsonKey(name: "source_currency_code")
    String? sourceCurrencyCode,
    @JsonKey(name: "source_currency_name")
    String? sourceCurrencyName,
    @JsonKey(name: "destination_currency_code")
    String? destinationCurrencyCode,
    @JsonKey(name: "destination_currency_name")
    String? destinationCurrencyName,
    @JsonKey(name: "source_country_code")
    String? sourceCountryCode,
    @JsonKey(name: "source_country_name")
    String? sourceCountryName,
    @JsonKey(name: "destination_country_code")
    String? destinationCountryCode,
    @JsonKey(name: "destination_country_name")
    String? destinationCountryName,
    @JsonKey(name: "source_amount")
    double? sourceAmount,
    @JsonKey(name: "local_amount")
    double? localAmount,
    @JsonKey(name: "bene_pay")
    int? benePay,
    @JsonKey(name: "transaction_product_code")
    int? transactionProductCode,
    @JsonKey(name: "rate")
    int? rate,
    @JsonKey(name: "destination_amount")
    double? destinationAmount,
    @JsonKey(name: "commission")
    int? commission,
    @JsonKey(name: "tax_percentage")
    int? taxPercentage,
    @JsonKey(name: "tax_collected")
    int? taxCollected,
    @JsonKey(name: "pay_amount")
    int? payAmount,
    @JsonKey(name: "receive_amount")
    int? receiveAmount,
    @JsonKey(name: "product_code")
    int? productCode,
    @JsonKey(name: "payment_mode")
    String? paymentMode,
    @JsonKey(name: "payment_mode_code")
    String? paymentModeCode,
    @JsonKey(name: "beneficiary_code")
    int? beneficiaryCode,
    @JsonKey(name: "route_type")
    String? routeType,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "disbursal_mode_name")
    String? disbursalModeName,
    @JsonKey(name: "created_on")
    DateTime? createdOn,
    @JsonKey(name: "routing_bank_name")
    String? routingBankName,
    @JsonKey(name: "routing_bank_account_code")
    String? routingBankAccountCode,
    @JsonKey(name: "disbursal_mode_code")
    String? disbursalModeCode,
    @JsonKey(name: "disbursal_mode_c_b_code")
    String? disbursalModeCBCode,
    @JsonKey(name: "module_code")
    int? moduleCode,
    @JsonKey(name: "location_code")
    int? locationCode,
    @JsonKey(name: "routing_bank_code")
    int? routingBankCode,
    @JsonKey(name: "disbursal_mode_id")
    int? disbursalModeId,
    @JsonKey(name: "member_code")
    int? memberCode,
    @JsonKey(name: "transaction_pin_number")
    String? transactionPinNumber,
    @JsonKey(name: "decimal_places")
    int? decimalPlaces,
  }) = _TranList;

  factory TranList.fromJson(Map<String, dynamic> json) => _$TranListFromJson(json);
}
