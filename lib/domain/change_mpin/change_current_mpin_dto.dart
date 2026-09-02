import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'change_current_mpin_dto.freezed.dart';
part 'change_current_mpin_dto.g.dart';

ChangeCurrentMpinDto changeCurrentMpinDtoFromJson(String str) => ChangeCurrentMpinDto.fromJson(json.decode(str));

String changeCurrentMpinDtoToJson(ChangeCurrentMpinDto data) => json.encode(data.toJson());

@freezed
sealed class ChangeCurrentMpinDto with _$ChangeCurrentMpinDto {
  const factory ChangeCurrentMpinDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _ChangeCurrentMpinDto;

  factory ChangeCurrentMpinDto.fromJson(Map<String, dynamic> json) => _$ChangeCurrentMpinDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "jwt_token")
    String? jwtToken,
    @JsonKey(name: "refresh_token")
    String? refreshToken,
    @JsonKey(name: "user")
    User? user,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class User with _$User {
  const factory User({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "mobile_code")
    int? mobileCode,
    @JsonKey(name: "mobile_number")
    String? mobileNumber,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "id_number")
    String? idNumber,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "is_user_registered")
    bool? isUserRegistered,
    @JsonKey(name: "is_k_y_c_registered")
    bool? isKYCRegistered,
    @JsonKey(name: "is_email_verified")
    bool? isEmailVerified,
    @JsonKey(name: "is_approved")
    bool? isApproved,
    @JsonKey(name: "is_blocked_user")
    bool? isBlockedUser,
    @JsonKey(name: "is_m_p_i_n_created")
    bool? isMPINCreated,
    @JsonKey(name: "app_member_code")
    int? appMemberCode,
    @JsonKey(name: "member_code")
    int? memberCode,
    @JsonKey(name: "is_bio_metric_login_enabled")
    bool? isBioMetricLoginEnabled,
    @JsonKey(name: "k_y_c_status")
    String? kYCStatus,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
