import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'summary_temporary_session_dto.freezed.dart';
part 'summary_temporary_session_dto.g.dart';

SummaryTemporarySessionDto summaryTemporarySessionDtoFromJson(String str) => SummaryTemporarySessionDto.fromJson(json.decode(str));

String summaryTemporarySessionDtoToJson(SummaryTemporarySessionDto data) => json.encode(data.toJson());

@freezed
sealed class SummaryTemporarySessionDto with _$SummaryTemporarySessionDto {
  const factory SummaryTemporarySessionDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _SummaryTemporarySessionDto;

  factory SummaryTemporarySessionDto.fromJson(Map<String, dynamic> json) => _$SummaryTemporarySessionDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "is_maker")
    bool? isMaker,
    @JsonKey(name: "app_transaction_reference")
    String? appTransactionReference,
    @JsonKey(name: "p_g_url")
    String? pGUrl,
    @JsonKey(name: "e_id")
    String? eId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
