// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_selectable_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonSelectableDto _$CommonSelectableDtoFromJson(Map<String, dynamic> json) =>
    _CommonSelectableDto(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CommonSelectableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommonSelectableDtoToJson(
  _CommonSelectableDto instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

_CommonSelectableData _$CommonSelectableDataFromJson(
  Map<String, dynamic> json,
) => _CommonSelectableData(
  list: (json['list'] as List<dynamic>?)
      ?.map((e) => CommonSelectableItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CommonSelectableDataToJson(
  _CommonSelectableData instance,
) => <String, dynamic>{'list': instance.list};

_CommonSelectableItem _$CommonSelectableItemFromJson(
  Map<String, dynamic> json,
) => _CommonSelectableItem(
  leading: json['leading'] as String?,
  titleName: json['titleName'] as String?,
  titleCode: json['titleCode'] as String?,
  subTitle: json['subTitle'] as String?,
  subTitleCode: json['subTitleCode'] as String?,
  trailingName: json['trailingName'] as String?,
  trailingCode: json['trailingCode'] as String?,
);

Map<String, dynamic> _$CommonSelectableItemToJson(
  _CommonSelectableItem instance,
) => <String, dynamic>{
  'leading': instance.leading,
  'titleName': instance.titleName,
  'titleCode': instance.titleCode,
  'subTitle': instance.subTitle,
  'subTitleCode': instance.subTitleCode,
  'trailingName': instance.trailingName,
  'trailingCode': instance.trailingCode,
};
