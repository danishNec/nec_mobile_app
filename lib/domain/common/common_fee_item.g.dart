// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_fee_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonFeeItem _$CommonFeeItemFromJson(Map<String, dynamic> json) =>
    _CommonFeeItem(
      title: json['title'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      isTotal: json['isTotal'] as bool? ?? false,
    );

Map<String, dynamic> _$CommonFeeItemToJson(_CommonFeeItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'isTotal': instance.isTotal,
    };
