import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_fee_item.freezed.dart';
part 'common_fee_item.g.dart';

@freezed
sealed class CommonFeeItem with _$CommonFeeItem {
  const factory CommonFeeItem({
    String? title,
    double? amount,
    @Default(false) bool isTotal,
  }) = _CommonFeeItem;

  factory CommonFeeItem.fromJson(Map<String, dynamic> json) =>
      _$CommonFeeItemFromJson(json);
}
