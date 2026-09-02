import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_user_dto.freezed.dart';
part 'home_user_dto.g.dart';

HomeUserDto homeUserDtoFromJson(String str) =>
    HomeUserDto.fromJson(json.decode(str));

String homeUserDtoToJson(HomeUserDto data) => json.encode(data.toJson());

@freezed
sealed class HomeUserDto with _$HomeUserDto {
  const factory HomeUserDto({
    @JsonKey(name: "success") String? success,
    @JsonKey(name: "status_code") int? statusCode,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "time_stamp") DateTime? timeStamp,
    @JsonKey(name: "version") String? version,
  }) = _HomeUserDto;

  factory HomeUserDto.fromJson(Map<String, dynamic> json) =>
      _$HomeUserDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "user") User? user,
    @JsonKey(name: "economic_activity_id") int? economicActivityId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class User with _$User {
  const factory User({
    @JsonKey(name: "e_id") String? eId,
    @JsonKey(name: "mobile_code") int? mobileCode,
    @JsonKey(name: "mobile_number") String? mobileNumber,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "middle_name") String? middleName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "date_of_birth") DateTime? dateOfBirth,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "country_code") String? countryCode,
    @JsonKey(name: "id_number") String? idNumber,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "state_code") String? stateCode,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "city_id") String? cityId,
    @JsonKey(name: "address1") String? address1,
    @JsonKey(name: "address2") String? address2,
    @JsonKey(name: "nationality_code") String? nationalityCode,
    @JsonKey(name: "country_of_birth_code") String? countryOfBirthCode,
    @JsonKey(name: "country_of_birth") String? countryOfBirth,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "is_email_verified") bool? isEmailVerified,
    @JsonKey(name: "residency_type") String? residencyType,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "identity_type_code") String? identityTypeCode,
    @JsonKey(name: "status_description") String? statusDescription,
    @JsonKey(name: "is_user_registered") bool? isUserRegistered,
    @JsonKey(name: "is_k_y_c_registered") bool? isKYCRegistered,
    @JsonKey(name: "is_approved") bool? isApproved,
    @JsonKey(name: "is_m_p_i_n_created") bool? isMPINCreated,
    @JsonKey(name: "app_member_code") int? appMemberCode,
    @JsonKey(name: "member_code") int? memberCode,
    @JsonKey(name: "is_bio_metric_login_enabled") bool? isBioMetricLoginEnabled,
    @JsonKey(name: "expected_turnover") int? expectedTurnover,
    @JsonKey(name: "expected_transaction_count") int? expectedTransactionCount,
    @JsonKey(name: "mobile_number_with_out_code") String? mobileNumberWithOutCode,
    @JsonKey(name: "salutation") String? salutation,
    @JsonKey(name: "employer") String? employer,
    @JsonKey(name: "place_of_birth") String? placeOfBirth,
    @JsonKey(name: "economic_activity_code") String? economicActivityCode,
    @JsonKey(name: "member_group_id") int? memberGroupId,
    @JsonKey(name: "present_address2") String? presentAddress2,
    @JsonKey(name: "risk_type_code") String? riskTypeCode,
    @JsonKey(name: "member_group") String? memberGroup,
    @JsonKey(name: "risk_type_name") String? riskTypeName,
    @JsonKey(name: "salutation_name") String? salutationName,
    @JsonKey(name: "k_y_c_status") String? kYCStatus,
    @JsonKey(name: "identity_type") String? identityType,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
