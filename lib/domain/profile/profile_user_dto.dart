import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_user_dto.freezed.dart';
part 'profile_user_dto.g.dart';

ProfileUserDto profileUserDtoFromJson(String str) => ProfileUserDto.fromJson(json.decode(str));

String profileUserDtoToJson(ProfileUserDto data) => json.encode(data.toJson());

@freezed
sealed class ProfileUserDto with _$ProfileUserDto {
  const factory ProfileUserDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "data")
    Data? data,
  }) = _ProfileUserDto;

  factory ProfileUserDto.fromJson(Map<String, dynamic> json) => _$ProfileUserDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
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
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "mobile_number")
    String? mobileNumber,
    @JsonKey(name: "email")
    String? email,
    @JsonKey(name: "is_email_verified")
    bool? isEmailVerified,
    @JsonKey(name: "gender")
    String? gender,
    @JsonKey(name: "nationality")
    String? nationality,
    @JsonKey(name: "date_of_birth")
    DateTime? dateOfBirth,
    @JsonKey(name: "place_of_birth")
    String? placeOfBirth,
    @JsonKey(name: "country_of_birth")
    String? countryOfBirth,
    @JsonKey(name: "address1")
    String? address1,
    @JsonKey(name: "state")
    String? state,
    @JsonKey(name: "id_number")
    String? idNumber,
    @JsonKey(name: "issue_date")
    DateTime? issueDate,
    @JsonKey(name: "expiry_date")
    DateTime? expiryDate,
    @JsonKey(name: "employer")
    String? employer,
    @JsonKey(name: "profession")
    String? profession,
    @JsonKey(name: "expected_transaction_count")
    int? expectedTransactionCount,
    @JsonKey(name: "expected_turnover")
    int? expectedTurnover,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
