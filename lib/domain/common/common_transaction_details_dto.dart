import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'common_transaction_details_dto.freezed.dart';
part 'common_transaction_details_dto.g.dart';

CommonTransactionDetailsDto commonTransactionDetailsDtoFromJson(String str) =>
    CommonTransactionDetailsDto.fromJson(json.decode(str));

String commonTransactionDetailsDtoToJson(CommonTransactionDetailsDto data) =>
    json.encode(data.toJson());

@freezed
sealed class CommonTransactionDetailsDto with _$CommonTransactionDetailsDto {
  const factory CommonTransactionDetailsDto({
    @JsonKey(name: "success") String? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") TransactionDetailData? data,
  }) = _CommonTransactionDetailsDto;

  factory CommonTransactionDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$CommonTransactionDetailsDtoFromJson(json);
}

@freezed
sealed class TransactionDetailData with _$TransactionDetailData {
  const factory TransactionDetailData({
    @JsonKey(name: "transaction") TransactionDetail? transaction,
  }) = _TransactionDetailData;

  factory TransactionDetailData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailDataFromJson(json);
}

@freezed
sealed class TransactionDetail with _$TransactionDetail {
  const factory TransactionDetail({
    @JsonKey(name: "transaction_reference") int? transactionReference,
    @JsonKey(name: "beneficiary_name") String? beneficiaryName,
    @JsonKey(name: "module_code") int? moduleCode,
    @JsonKey(name: "location_code") int? locationCode,
    @JsonKey(name: "branch_name") String? branchName,
    @JsonKey(name: "routing_bank_code") int? routingBankCode,
    @JsonKey(name: "disbursal_mode_id") int? disbursalModeId,
    @JsonKey(name: "beneficiary_state_id") int? beneficiaryStateId,
    @JsonKey(name: "beneficiary_city_id") int? beneficiaryCityId,
    @JsonKey(name: "beneficiary_code") int? beneficiaryCode,
    @JsonKey(name: "member_code") int? memberCode,
    @JsonKey(name: "e_id") String? eId,
    @JsonKey(name: "transaction_date") DateTime? transactionDate,
    @JsonKey(name: "source_currency_code") String? sourceCurrencyCode,
    @JsonKey(name: "source_currency_name") String? sourceCurrencyName,
    @JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,
    @JsonKey(name: "destination_currency_name") String? destinationCurrencyName,
    @JsonKey(name: "source_country_code") String? sourceCountryCode,
    @JsonKey(name: "source_country_name") String? sourceCountryName,
    @JsonKey(name: "destination_country_code") String? destinationCountryCode,
    @JsonKey(name: "destination_country_name") String? destinationCountryName,
    @JsonKey(name: "source_amount") int? sourceAmount,
    @JsonKey(name: "local_amount") int? localAmount,
    @JsonKey(name: "rate") double? rate,
    @JsonKey(name: "destination_amount") int? destinationAmount,
    @JsonKey(name: "bene_pay") double? benePay,
    @JsonKey(name: "f_c_commission") int? fCCommission,
    @JsonKey(name: "commission") int? commission,
    @JsonKey(name: "tax_percentage") int? taxPercentage,
    @JsonKey(name: "tax_collected") int? taxCollected,
    @JsonKey(name: "pay_amount") int? payAmount,
    @JsonKey(name: "receive_amount") double? receiveAmount,
    @JsonKey(name: "product_code") int? productCode,
    @JsonKey(name: "product") String? product,
    @JsonKey(name: "transfer_mode_code") String? transferModeCode,
    @JsonKey(name: "transfer_mode") String? transferMode,
    @JsonKey(name: "payment_mode") String? paymentMode,
    @JsonKey(name: "route_type") String? routeType,
    @JsonKey(name: "route_code") String? routeCode,
    @JsonKey(name: "purpose") String? purpose,
    @JsonKey(name: "purpose_code") String? purposeCode,
    @JsonKey(name: "income_source") String? incomeSource,
    @JsonKey(name: "income_source_code") String? incomeSourceCode,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "app_status") String? appStatus,
    @JsonKey(name: "i_s_download") bool? iSDownload,
    @JsonKey(name: "created_on") DateTime? createdOn,
    @JsonKey(name: "beneficiary_by_id") BeneficiaryDetail? beneficiaryById,
  }) = _TransactionDetail;

  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);
}

@freezed
sealed class BeneficiaryDetail with _$BeneficiaryDetail {
  const factory BeneficiaryDetail({
    @JsonKey(name: "e_id") String? eId,
    @JsonKey(name: "beneficiary_code") int? beneficiaryCode,
    @JsonKey(name: "beneficiary_gender") String? beneficiaryGender,
    @JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,
    @JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,
    @JsonKey(name: "beneficiary_address3") String? beneficiaryAddress3,
    @JsonKey(name: "beneficiary_address4") String? beneficiaryAddress4,
    @JsonKey(name: "beneficiary_address5") String? beneficiaryAddress5,
    @JsonKey(name: "beneficiary_state") String? beneficiaryState,
    @JsonKey(name: "beneficiary_city") String? beneficiaryCity,
    @JsonKey(name: "beneficiary_city_id") int? beneficiaryCityId,
    @JsonKey(name: "beneficiary_zip_code") String? beneficiaryZipCode,
    @JsonKey(name: "beneficiary_idtype_name") String? beneficiaryIdtypeName,
    @JsonKey(name: "beneficiary_idtype_id") int? beneficiaryIdtypeId,
    @JsonKey(name: "beneficiary_idtype_code") String? beneficiaryIdtypeCode,
    @JsonKey(name: "beneficiary_idtype_c_b_code") String? beneficiaryIdtypeCBCode,
    @JsonKey(name: "beneficiary_phone") String? beneficiaryPhone,
    @JsonKey(name: "beneficiary_mobile_code") int? beneficiaryMobileCode,
    @JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,
    @JsonKey(name: "beneficiary_email") String? beneficiaryEmail,
    @JsonKey(name: "beneficiary_fax") String? beneficiaryFax,
    @JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,
    @JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,
    @JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,
    @JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,
    @JsonKey(name: "beneficiary_nearest_airport_code") String? beneficiaryNearestAirportCode,
    @JsonKey(name: "beneficiary_nearest_airport_name") String? beneficiaryNearestAirportName,
    @JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,
    @JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,
    @JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,
    @JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,
    @JsonKey(name: "beneficiary_branch_address") String? beneficiaryBranchAddress,
    @JsonKey(name: "beneficiary_branch_address2") String? beneficiaryBranchAddress2,
    @JsonKey(name: "beneficiary_branch_state") String? beneficiaryBranchState,
    @JsonKey(name: "beneficiary_branch_state_code") String? beneficiaryBranchStateCode,
    @JsonKey(name: "beneficiary_branch_city") String? beneficiaryBranchCity,
    @JsonKey(name: "beneficiary_branch_city_code") String? beneficiaryBranchCityCode,
    @JsonKey(name: "beneficiary_branch_land_mark") String? beneficiaryBranchLandMark,
    @JsonKey(name: "beneficiary_branch_zip_code") String? beneficiaryBranchZipCode,
    @JsonKey(name: "beneficary_relation") String? beneficaryRelation,
    @JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,
    @JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,
    @JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,
    @JsonKey(name: "route_type") String? routeType,
    @JsonKey(name: "route_code") String? routeCode,
    @JsonKey(name: "product_code") int? productCode,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "disbursal_mode_id") int? disbursalModeId,
    @JsonKey(name: "disbursal_mode") String? disbursalMode,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "beneficiary_category") String? beneficiaryCategory,
  }) = _BeneficiaryDetail;

  factory BeneficiaryDetail.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryDetailFromJson(json);
}