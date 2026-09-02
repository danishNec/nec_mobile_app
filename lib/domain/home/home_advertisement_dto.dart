import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_advertisement_dto.freezed.dart';
part 'home_advertisement_dto.g.dart';

HomeAdvertisementDto homeAdvertisementDtoFromJson(String str) => HomeAdvertisementDto.fromJson(json.decode(str));

String homeAdvertisementDtoToJson(HomeAdvertisementDto data) => json.encode(data.toJson());

@freezed
sealed class HomeAdvertisementDto with _$HomeAdvertisementDto {
  const factory HomeAdvertisementDto({
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
  }) = _HomeAdvertisementDto;

  factory HomeAdvertisementDto.fromJson(Map<String, dynamic> json) => _$HomeAdvertisementDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "app_banners")
    List<AppBanner>? appBanners,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class AppBanner with _$AppBanner {
  const factory AppBanner({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "doc_name")
    String? docName,
    @JsonKey(name: "link")
    String? link,
  }) = _AppBanner;

  factory AppBanner.fromJson(Map<String, dynamic> json) => _$AppBannerFromJson(json);
}
