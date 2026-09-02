import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_dto.freezed.dart';
part 'app_version_dto.g.dart';

/// Full API response wrapper for the version-config endpoint.
/// Mirrors the shape of every other DTO in the project — the outer envelope
/// carries [statusCode]/[message] and the payload lives in [data].
@freezed
sealed class AppVersionDto with _$AppVersionDto {
  const factory AppVersionDto({
    @JsonKey(name: 'statusCode') int? statusCode,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') AppVersionData? data,
  }) = _AppVersionDto;

  factory AppVersionDto.fromJson(Map<String, dynamic> json) =>
      _$AppVersionDtoFromJson(json);
}

/// The payload inside [AppVersionDto.data].
@freezed
sealed class AppVersionData with _$AppVersionData {
  const factory AppVersionData({
    @JsonKey(name: 'latestVersion') required String latestVersion,
    @JsonKey(name: 'minimumVersion') required String minimumVersion,
    @JsonKey(name: 'isForceUpdate') @Default(false) bool isForceUpdate,
    @JsonKey(name: 'updateTitle') String? updateTitle,
    @JsonKey(name: 'updateMessage') String? updateMessage,
    @JsonKey(name: 'changelogItems') @Default([]) List<String> changelogItems,
    @JsonKey(name: 'androidStoreUrl') String? androidStoreUrl,
    @JsonKey(name: 'iosStoreUrl') String? iosStoreUrl,
  }) = _AppVersionData;

  factory AppVersionData.fromJson(Map<String, dynamic> json) =>
      _$AppVersionDataFromJson(json);
}