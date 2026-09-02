// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryEvent()';
}


}

/// @nodoc
class $TransactionHistoryEventCopyWith<$Res>  {
$TransactionHistoryEventCopyWith(TransactionHistoryEvent _, $Res Function(TransactionHistoryEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionHistoryEvent].
extension TransactionHistoryEventPatterns on TransactionHistoryEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTransactionHistory value)?  getTransactionHistory,TResult Function( _GetTransactionHistoryBeneficiary value)?  getTransactionHistoryBeneficiary,TResult Function( _GetTransactionHistoryCountryCombo value)?  getTransactionHistoryCountryCombo,TResult Function( _GetTransactionHistoryDetails value)?  getTransactionHistoryDetails,TResult Function( _DownloadOrShareTransactionReceipt value)?  downloadOrShareTransactionReceipt,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTransactionHistory() when getTransactionHistory != null:
return getTransactionHistory(_that);case _GetTransactionHistoryBeneficiary() when getTransactionHistoryBeneficiary != null:
return getTransactionHistoryBeneficiary(_that);case _GetTransactionHistoryCountryCombo() when getTransactionHistoryCountryCombo != null:
return getTransactionHistoryCountryCombo(_that);case _GetTransactionHistoryDetails() when getTransactionHistoryDetails != null:
return getTransactionHistoryDetails(_that);case _DownloadOrShareTransactionReceipt() when downloadOrShareTransactionReceipt != null:
return downloadOrShareTransactionReceipt(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTransactionHistory value)  getTransactionHistory,required TResult Function( _GetTransactionHistoryBeneficiary value)  getTransactionHistoryBeneficiary,required TResult Function( _GetTransactionHistoryCountryCombo value)  getTransactionHistoryCountryCombo,required TResult Function( _GetTransactionHistoryDetails value)  getTransactionHistoryDetails,required TResult Function( _DownloadOrShareTransactionReceipt value)  downloadOrShareTransactionReceipt,}){
final _that = this;
switch (_that) {
case _GetTransactionHistory():
return getTransactionHistory(_that);case _GetTransactionHistoryBeneficiary():
return getTransactionHistoryBeneficiary(_that);case _GetTransactionHistoryCountryCombo():
return getTransactionHistoryCountryCombo(_that);case _GetTransactionHistoryDetails():
return getTransactionHistoryDetails(_that);case _DownloadOrShareTransactionReceipt():
return downloadOrShareTransactionReceipt(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTransactionHistory value)?  getTransactionHistory,TResult? Function( _GetTransactionHistoryBeneficiary value)?  getTransactionHistoryBeneficiary,TResult? Function( _GetTransactionHistoryCountryCombo value)?  getTransactionHistoryCountryCombo,TResult? Function( _GetTransactionHistoryDetails value)?  getTransactionHistoryDetails,TResult? Function( _DownloadOrShareTransactionReceipt value)?  downloadOrShareTransactionReceipt,}){
final _that = this;
switch (_that) {
case _GetTransactionHistory() when getTransactionHistory != null:
return getTransactionHistory(_that);case _GetTransactionHistoryBeneficiary() when getTransactionHistoryBeneficiary != null:
return getTransactionHistoryBeneficiary(_that);case _GetTransactionHistoryCountryCombo() when getTransactionHistoryCountryCombo != null:
return getTransactionHistoryCountryCombo(_that);case _GetTransactionHistoryDetails() when getTransactionHistoryDetails != null:
return getTransactionHistoryDetails(_that);case _DownloadOrShareTransactionReceipt() when downloadOrShareTransactionReceipt != null:
return downloadOrShareTransactionReceipt(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isLoadMore,  String? sortBy,  String? sortOrder,  List<String>? countryCodes,  List<String>? beneficiaryCodes,  String? keyword,  bool resetSort)?  getTransactionHistory,TResult Function()?  getTransactionHistoryBeneficiary,TResult Function()?  getTransactionHistoryCountryCombo,TResult Function( String beneficiaryId,  int transactionReference)?  getTransactionHistoryDetails,TResult Function( int transactionReference,  bool isDownload)?  downloadOrShareTransactionReceipt,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTransactionHistory() when getTransactionHistory != null:
return getTransactionHistory(_that.isLoadMore,_that.sortBy,_that.sortOrder,_that.countryCodes,_that.beneficiaryCodes,_that.keyword,_that.resetSort);case _GetTransactionHistoryBeneficiary() when getTransactionHistoryBeneficiary != null:
return getTransactionHistoryBeneficiary();case _GetTransactionHistoryCountryCombo() when getTransactionHistoryCountryCombo != null:
return getTransactionHistoryCountryCombo();case _GetTransactionHistoryDetails() when getTransactionHistoryDetails != null:
return getTransactionHistoryDetails(_that.beneficiaryId,_that.transactionReference);case _DownloadOrShareTransactionReceipt() when downloadOrShareTransactionReceipt != null:
return downloadOrShareTransactionReceipt(_that.transactionReference,_that.isDownload);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isLoadMore,  String? sortBy,  String? sortOrder,  List<String>? countryCodes,  List<String>? beneficiaryCodes,  String? keyword,  bool resetSort)  getTransactionHistory,required TResult Function()  getTransactionHistoryBeneficiary,required TResult Function()  getTransactionHistoryCountryCombo,required TResult Function( String beneficiaryId,  int transactionReference)  getTransactionHistoryDetails,required TResult Function( int transactionReference,  bool isDownload)  downloadOrShareTransactionReceipt,}) {final _that = this;
switch (_that) {
case _GetTransactionHistory():
return getTransactionHistory(_that.isLoadMore,_that.sortBy,_that.sortOrder,_that.countryCodes,_that.beneficiaryCodes,_that.keyword,_that.resetSort);case _GetTransactionHistoryBeneficiary():
return getTransactionHistoryBeneficiary();case _GetTransactionHistoryCountryCombo():
return getTransactionHistoryCountryCombo();case _GetTransactionHistoryDetails():
return getTransactionHistoryDetails(_that.beneficiaryId,_that.transactionReference);case _DownloadOrShareTransactionReceipt():
return downloadOrShareTransactionReceipt(_that.transactionReference,_that.isDownload);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isLoadMore,  String? sortBy,  String? sortOrder,  List<String>? countryCodes,  List<String>? beneficiaryCodes,  String? keyword,  bool resetSort)?  getTransactionHistory,TResult? Function()?  getTransactionHistoryBeneficiary,TResult? Function()?  getTransactionHistoryCountryCombo,TResult? Function( String beneficiaryId,  int transactionReference)?  getTransactionHistoryDetails,TResult? Function( int transactionReference,  bool isDownload)?  downloadOrShareTransactionReceipt,}) {final _that = this;
switch (_that) {
case _GetTransactionHistory() when getTransactionHistory != null:
return getTransactionHistory(_that.isLoadMore,_that.sortBy,_that.sortOrder,_that.countryCodes,_that.beneficiaryCodes,_that.keyword,_that.resetSort);case _GetTransactionHistoryBeneficiary() when getTransactionHistoryBeneficiary != null:
return getTransactionHistoryBeneficiary();case _GetTransactionHistoryCountryCombo() when getTransactionHistoryCountryCombo != null:
return getTransactionHistoryCountryCombo();case _GetTransactionHistoryDetails() when getTransactionHistoryDetails != null:
return getTransactionHistoryDetails(_that.beneficiaryId,_that.transactionReference);case _DownloadOrShareTransactionReceipt() when downloadOrShareTransactionReceipt != null:
return downloadOrShareTransactionReceipt(_that.transactionReference,_that.isDownload);case _:
  return null;

}
}

}

/// @nodoc


class _GetTransactionHistory implements TransactionHistoryEvent {
  const _GetTransactionHistory({this.isLoadMore = false, this.sortBy, this.sortOrder, final  List<String>? countryCodes, final  List<String>? beneficiaryCodes, this.keyword, this.resetSort = false}): _countryCodes = countryCodes,_beneficiaryCodes = beneficiaryCodes;
  

@JsonKey() final  bool isLoadMore;
 final  String? sortBy;
 final  String? sortOrder;
 final  List<String>? _countryCodes;
 List<String>? get countryCodes {
  final value = _countryCodes;
  if (value == null) return null;
  if (_countryCodes is EqualUnmodifiableListView) return _countryCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _beneficiaryCodes;
 List<String>? get beneficiaryCodes {
  final value = _beneficiaryCodes;
  if (value == null) return null;
  if (_beneficiaryCodes is EqualUnmodifiableListView) return _beneficiaryCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  String? keyword;
@JsonKey() final  bool resetSort;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTransactionHistoryCopyWith<_GetTransactionHistory> get copyWith => __$GetTransactionHistoryCopyWithImpl<_GetTransactionHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactionHistory&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._countryCodes, _countryCodes)&&const DeepCollectionEquality().equals(other._beneficiaryCodes, _beneficiaryCodes)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.resetSort, resetSort) || other.resetSort == resetSort));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadMore,sortBy,sortOrder,const DeepCollectionEquality().hash(_countryCodes),const DeepCollectionEquality().hash(_beneficiaryCodes),keyword,resetSort);

@override
String toString() {
  return 'TransactionHistoryEvent.getTransactionHistory(isLoadMore: $isLoadMore, sortBy: $sortBy, sortOrder: $sortOrder, countryCodes: $countryCodes, beneficiaryCodes: $beneficiaryCodes, keyword: $keyword, resetSort: $resetSort)';
}


}

/// @nodoc
abstract mixin class _$GetTransactionHistoryCopyWith<$Res> implements $TransactionHistoryEventCopyWith<$Res> {
  factory _$GetTransactionHistoryCopyWith(_GetTransactionHistory value, $Res Function(_GetTransactionHistory) _then) = __$GetTransactionHistoryCopyWithImpl;
@useResult
$Res call({
 bool isLoadMore, String? sortBy, String? sortOrder, List<String>? countryCodes, List<String>? beneficiaryCodes, String? keyword, bool resetSort
});




}
/// @nodoc
class __$GetTransactionHistoryCopyWithImpl<$Res>
    implements _$GetTransactionHistoryCopyWith<$Res> {
  __$GetTransactionHistoryCopyWithImpl(this._self, this._then);

  final _GetTransactionHistory _self;
  final $Res Function(_GetTransactionHistory) _then;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoadMore = null,Object? sortBy = freezed,Object? sortOrder = freezed,Object? countryCodes = freezed,Object? beneficiaryCodes = freezed,Object? keyword = freezed,Object? resetSort = null,}) {
  return _then(_GetTransactionHistory(
isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,countryCodes: freezed == countryCodes ? _self._countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<String>?,beneficiaryCodes: freezed == beneficiaryCodes ? _self._beneficiaryCodes : beneficiaryCodes // ignore: cast_nullable_to_non_nullable
as List<String>?,keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,resetSort: null == resetSort ? _self.resetSort : resetSort // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GetTransactionHistoryBeneficiary implements TransactionHistoryEvent {
  const _GetTransactionHistoryBeneficiary();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactionHistoryBeneficiary);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryEvent.getTransactionHistoryBeneficiary()';
}


}




/// @nodoc


class _GetTransactionHistoryCountryCombo implements TransactionHistoryEvent {
  const _GetTransactionHistoryCountryCombo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactionHistoryCountryCombo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryEvent.getTransactionHistoryCountryCombo()';
}


}




/// @nodoc


class _GetTransactionHistoryDetails implements TransactionHistoryEvent {
  const _GetTransactionHistoryDetails({required this.beneficiaryId, required this.transactionReference});
  

 final  String beneficiaryId;
 final  int transactionReference;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTransactionHistoryDetailsCopyWith<_GetTransactionHistoryDetails> get copyWith => __$GetTransactionHistoryDetailsCopyWithImpl<_GetTransactionHistoryDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactionHistoryDetails&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference));
}


@override
int get hashCode => Object.hash(runtimeType,beneficiaryId,transactionReference);

@override
String toString() {
  return 'TransactionHistoryEvent.getTransactionHistoryDetails(beneficiaryId: $beneficiaryId, transactionReference: $transactionReference)';
}


}

/// @nodoc
abstract mixin class _$GetTransactionHistoryDetailsCopyWith<$Res> implements $TransactionHistoryEventCopyWith<$Res> {
  factory _$GetTransactionHistoryDetailsCopyWith(_GetTransactionHistoryDetails value, $Res Function(_GetTransactionHistoryDetails) _then) = __$GetTransactionHistoryDetailsCopyWithImpl;
@useResult
$Res call({
 String beneficiaryId, int transactionReference
});




}
/// @nodoc
class __$GetTransactionHistoryDetailsCopyWithImpl<$Res>
    implements _$GetTransactionHistoryDetailsCopyWith<$Res> {
  __$GetTransactionHistoryDetailsCopyWithImpl(this._self, this._then);

  final _GetTransactionHistoryDetails _self;
  final $Res Function(_GetTransactionHistoryDetails) _then;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beneficiaryId = null,Object? transactionReference = null,}) {
  return _then(_GetTransactionHistoryDetails(
beneficiaryId: null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as String,transactionReference: null == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DownloadOrShareTransactionReceipt implements TransactionHistoryEvent {
  const _DownloadOrShareTransactionReceipt({required this.transactionReference, required this.isDownload});
  

 final  int transactionReference;
 final  bool isDownload;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadOrShareTransactionReceiptCopyWith<_DownloadOrShareTransactionReceipt> get copyWith => __$DownloadOrShareTransactionReceiptCopyWithImpl<_DownloadOrShareTransactionReceipt>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadOrShareTransactionReceipt&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.isDownload, isDownload) || other.isDownload == isDownload));
}


@override
int get hashCode => Object.hash(runtimeType,transactionReference,isDownload);

@override
String toString() {
  return 'TransactionHistoryEvent.downloadOrShareTransactionReceipt(transactionReference: $transactionReference, isDownload: $isDownload)';
}


}

/// @nodoc
abstract mixin class _$DownloadOrShareTransactionReceiptCopyWith<$Res> implements $TransactionHistoryEventCopyWith<$Res> {
  factory _$DownloadOrShareTransactionReceiptCopyWith(_DownloadOrShareTransactionReceipt value, $Res Function(_DownloadOrShareTransactionReceipt) _then) = __$DownloadOrShareTransactionReceiptCopyWithImpl;
@useResult
$Res call({
 int transactionReference, bool isDownload
});




}
/// @nodoc
class __$DownloadOrShareTransactionReceiptCopyWithImpl<$Res>
    implements _$DownloadOrShareTransactionReceiptCopyWith<$Res> {
  __$DownloadOrShareTransactionReceiptCopyWithImpl(this._self, this._then);

  final _DownloadOrShareTransactionReceipt _self;
  final $Res Function(_DownloadOrShareTransactionReceipt) _then;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionReference = null,Object? isDownload = null,}) {
  return _then(_DownloadOrShareTransactionReceipt(
transactionReference: null == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int,isDownload: null == isDownload ? _self.isDownload : isDownload // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TransactionHistoryState {

 bool get isLoading; bool get isLoadingBeneficiary; bool get isLoadingCountryCombo; bool get isLoadingDetails; bool get isDownloadingOrSharingReceipt; bool get isDownloadingReceipt; bool get hasMore; bool get isSorting; int get page; String? get sortBy; String? get sortOrder; List<String> get countryCodes; List<String> get beneficiaryCodes; String? get keyword; CommonTransactionDto? get commonTransactionDto; TransactionHistoryBeneficiaryDto? get transactionHistoryBeneficiaryDto; TransactionHistoryCountryComboDto? get transactionHistoryCountryComboDto; CommonTransactionDetailsDto? get transactionHistoryDetailsDto; Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> get transactionHistorySuccessOrFailureOption; Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> get transactionHistoryBeneficiarySuccessOrFailureOption; Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> get transactionHistoryCountryComboSuccessOrFailureOption; Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> get transactionHistoryDetailsSuccessOrFailureOption; Option<Either<TransactionHistoryFailure, String>> get downloadOrShareReceiptSuccessOrFailureOption;
/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryStateCopyWith<TransactionHistoryState> get copyWith => _$TransactionHistoryStateCopyWithImpl<TransactionHistoryState>(this as TransactionHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingBeneficiary, isLoadingBeneficiary) || other.isLoadingBeneficiary == isLoadingBeneficiary)&&(identical(other.isLoadingCountryCombo, isLoadingCountryCombo) || other.isLoadingCountryCombo == isLoadingCountryCombo)&&(identical(other.isLoadingDetails, isLoadingDetails) || other.isLoadingDetails == isLoadingDetails)&&(identical(other.isDownloadingOrSharingReceipt, isDownloadingOrSharingReceipt) || other.isDownloadingOrSharingReceipt == isDownloadingOrSharingReceipt)&&(identical(other.isDownloadingReceipt, isDownloadingReceipt) || other.isDownloadingReceipt == isDownloadingReceipt)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isSorting, isSorting) || other.isSorting == isSorting)&&(identical(other.page, page) || other.page == page)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.countryCodes, countryCodes)&&const DeepCollectionEquality().equals(other.beneficiaryCodes, beneficiaryCodes)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.commonTransactionDto, commonTransactionDto) || other.commonTransactionDto == commonTransactionDto)&&(identical(other.transactionHistoryBeneficiaryDto, transactionHistoryBeneficiaryDto) || other.transactionHistoryBeneficiaryDto == transactionHistoryBeneficiaryDto)&&(identical(other.transactionHistoryCountryComboDto, transactionHistoryCountryComboDto) || other.transactionHistoryCountryComboDto == transactionHistoryCountryComboDto)&&(identical(other.transactionHistoryDetailsDto, transactionHistoryDetailsDto) || other.transactionHistoryDetailsDto == transactionHistoryDetailsDto)&&(identical(other.transactionHistorySuccessOrFailureOption, transactionHistorySuccessOrFailureOption) || other.transactionHistorySuccessOrFailureOption == transactionHistorySuccessOrFailureOption)&&(identical(other.transactionHistoryBeneficiarySuccessOrFailureOption, transactionHistoryBeneficiarySuccessOrFailureOption) || other.transactionHistoryBeneficiarySuccessOrFailureOption == transactionHistoryBeneficiarySuccessOrFailureOption)&&(identical(other.transactionHistoryCountryComboSuccessOrFailureOption, transactionHistoryCountryComboSuccessOrFailureOption) || other.transactionHistoryCountryComboSuccessOrFailureOption == transactionHistoryCountryComboSuccessOrFailureOption)&&(identical(other.transactionHistoryDetailsSuccessOrFailureOption, transactionHistoryDetailsSuccessOrFailureOption) || other.transactionHistoryDetailsSuccessOrFailureOption == transactionHistoryDetailsSuccessOrFailureOption)&&(identical(other.downloadOrShareReceiptSuccessOrFailureOption, downloadOrShareReceiptSuccessOrFailureOption) || other.downloadOrShareReceiptSuccessOrFailureOption == downloadOrShareReceiptSuccessOrFailureOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,isLoadingBeneficiary,isLoadingCountryCombo,isLoadingDetails,isDownloadingOrSharingReceipt,isDownloadingReceipt,hasMore,isSorting,page,sortBy,sortOrder,const DeepCollectionEquality().hash(countryCodes),const DeepCollectionEquality().hash(beneficiaryCodes),keyword,commonTransactionDto,transactionHistoryBeneficiaryDto,transactionHistoryCountryComboDto,transactionHistoryDetailsDto,transactionHistorySuccessOrFailureOption,transactionHistoryBeneficiarySuccessOrFailureOption,transactionHistoryCountryComboSuccessOrFailureOption,transactionHistoryDetailsSuccessOrFailureOption,downloadOrShareReceiptSuccessOrFailureOption]);

@override
String toString() {
  return 'TransactionHistoryState(isLoading: $isLoading, isLoadingBeneficiary: $isLoadingBeneficiary, isLoadingCountryCombo: $isLoadingCountryCombo, isLoadingDetails: $isLoadingDetails, isDownloadingOrSharingReceipt: $isDownloadingOrSharingReceipt, isDownloadingReceipt: $isDownloadingReceipt, hasMore: $hasMore, isSorting: $isSorting, page: $page, sortBy: $sortBy, sortOrder: $sortOrder, countryCodes: $countryCodes, beneficiaryCodes: $beneficiaryCodes, keyword: $keyword, commonTransactionDto: $commonTransactionDto, transactionHistoryBeneficiaryDto: $transactionHistoryBeneficiaryDto, transactionHistoryCountryComboDto: $transactionHistoryCountryComboDto, transactionHistoryDetailsDto: $transactionHistoryDetailsDto, transactionHistorySuccessOrFailureOption: $transactionHistorySuccessOrFailureOption, transactionHistoryBeneficiarySuccessOrFailureOption: $transactionHistoryBeneficiarySuccessOrFailureOption, transactionHistoryCountryComboSuccessOrFailureOption: $transactionHistoryCountryComboSuccessOrFailureOption, transactionHistoryDetailsSuccessOrFailureOption: $transactionHistoryDetailsSuccessOrFailureOption, downloadOrShareReceiptSuccessOrFailureOption: $downloadOrShareReceiptSuccessOrFailureOption)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryStateCopyWith<$Res>  {
  factory $TransactionHistoryStateCopyWith(TransactionHistoryState value, $Res Function(TransactionHistoryState) _then) = _$TransactionHistoryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoadingBeneficiary, bool isLoadingCountryCombo, bool isLoadingDetails, bool isDownloadingOrSharingReceipt, bool isDownloadingReceipt, bool hasMore, bool isSorting, int page, String? sortBy, String? sortOrder, List<String> countryCodes, List<String> beneficiaryCodes, String? keyword, CommonTransactionDto? commonTransactionDto, TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto, TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto, CommonTransactionDetailsDto? transactionHistoryDetailsDto, Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> transactionHistorySuccessOrFailureOption, Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> transactionHistoryBeneficiarySuccessOrFailureOption, Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> transactionHistoryCountryComboSuccessOrFailureOption, Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> transactionHistoryDetailsSuccessOrFailureOption, Option<Either<TransactionHistoryFailure, String>> downloadOrShareReceiptSuccessOrFailureOption
});


$CommonTransactionDtoCopyWith<$Res>? get commonTransactionDto;$TransactionHistoryBeneficiaryDtoCopyWith<$Res>? get transactionHistoryBeneficiaryDto;$TransactionHistoryCountryComboDtoCopyWith<$Res>? get transactionHistoryCountryComboDto;$CommonTransactionDetailsDtoCopyWith<$Res>? get transactionHistoryDetailsDto;

}
/// @nodoc
class _$TransactionHistoryStateCopyWithImpl<$Res>
    implements $TransactionHistoryStateCopyWith<$Res> {
  _$TransactionHistoryStateCopyWithImpl(this._self, this._then);

  final TransactionHistoryState _self;
  final $Res Function(TransactionHistoryState) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoadingBeneficiary = null,Object? isLoadingCountryCombo = null,Object? isLoadingDetails = null,Object? isDownloadingOrSharingReceipt = null,Object? isDownloadingReceipt = null,Object? hasMore = null,Object? isSorting = null,Object? page = null,Object? sortBy = freezed,Object? sortOrder = freezed,Object? countryCodes = null,Object? beneficiaryCodes = null,Object? keyword = freezed,Object? commonTransactionDto = freezed,Object? transactionHistoryBeneficiaryDto = freezed,Object? transactionHistoryCountryComboDto = freezed,Object? transactionHistoryDetailsDto = freezed,Object? transactionHistorySuccessOrFailureOption = null,Object? transactionHistoryBeneficiarySuccessOrFailureOption = null,Object? transactionHistoryCountryComboSuccessOrFailureOption = null,Object? transactionHistoryDetailsSuccessOrFailureOption = null,Object? downloadOrShareReceiptSuccessOrFailureOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingBeneficiary: null == isLoadingBeneficiary ? _self.isLoadingBeneficiary : isLoadingBeneficiary // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCountryCombo: null == isLoadingCountryCombo ? _self.isLoadingCountryCombo : isLoadingCountryCombo // ignore: cast_nullable_to_non_nullable
as bool,isLoadingDetails: null == isLoadingDetails ? _self.isLoadingDetails : isLoadingDetails // ignore: cast_nullable_to_non_nullable
as bool,isDownloadingOrSharingReceipt: null == isDownloadingOrSharingReceipt ? _self.isDownloadingOrSharingReceipt : isDownloadingOrSharingReceipt // ignore: cast_nullable_to_non_nullable
as bool,isDownloadingReceipt: null == isDownloadingReceipt ? _self.isDownloadingReceipt : isDownloadingReceipt // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isSorting: null == isSorting ? _self.isSorting : isSorting // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<String>,beneficiaryCodes: null == beneficiaryCodes ? _self.beneficiaryCodes : beneficiaryCodes // ignore: cast_nullable_to_non_nullable
as List<String>,keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,commonTransactionDto: freezed == commonTransactionDto ? _self.commonTransactionDto : commonTransactionDto // ignore: cast_nullable_to_non_nullable
as CommonTransactionDto?,transactionHistoryBeneficiaryDto: freezed == transactionHistoryBeneficiaryDto ? _self.transactionHistoryBeneficiaryDto : transactionHistoryBeneficiaryDto // ignore: cast_nullable_to_non_nullable
as TransactionHistoryBeneficiaryDto?,transactionHistoryCountryComboDto: freezed == transactionHistoryCountryComboDto ? _self.transactionHistoryCountryComboDto : transactionHistoryCountryComboDto // ignore: cast_nullable_to_non_nullable
as TransactionHistoryCountryComboDto?,transactionHistoryDetailsDto: freezed == transactionHistoryDetailsDto ? _self.transactionHistoryDetailsDto : transactionHistoryDetailsDto // ignore: cast_nullable_to_non_nullable
as CommonTransactionDetailsDto?,transactionHistorySuccessOrFailureOption: null == transactionHistorySuccessOrFailureOption ? _self.transactionHistorySuccessOrFailureOption : transactionHistorySuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryDto>>,transactionHistoryBeneficiarySuccessOrFailureOption: null == transactionHistoryBeneficiarySuccessOrFailureOption ? _self.transactionHistoryBeneficiarySuccessOrFailureOption : transactionHistoryBeneficiarySuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>>,transactionHistoryCountryComboSuccessOrFailureOption: null == transactionHistoryCountryComboSuccessOrFailureOption ? _self.transactionHistoryCountryComboSuccessOrFailureOption : transactionHistoryCountryComboSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>>,transactionHistoryDetailsSuccessOrFailureOption: null == transactionHistoryDetailsSuccessOrFailureOption ? _self.transactionHistoryDetailsSuccessOrFailureOption : transactionHistoryDetailsSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>>,downloadOrShareReceiptSuccessOrFailureOption: null == downloadOrShareReceiptSuccessOrFailureOption ? _self.downloadOrShareReceiptSuccessOrFailureOption : downloadOrShareReceiptSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, String>>,
  ));
}
/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonTransactionDtoCopyWith<$Res>? get commonTransactionDto {
    if (_self.commonTransactionDto == null) {
    return null;
  }

  return $CommonTransactionDtoCopyWith<$Res>(_self.commonTransactionDto!, (value) {
    return _then(_self.copyWith(commonTransactionDto: value));
  });
}/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHistoryBeneficiaryDtoCopyWith<$Res>? get transactionHistoryBeneficiaryDto {
    if (_self.transactionHistoryBeneficiaryDto == null) {
    return null;
  }

  return $TransactionHistoryBeneficiaryDtoCopyWith<$Res>(_self.transactionHistoryBeneficiaryDto!, (value) {
    return _then(_self.copyWith(transactionHistoryBeneficiaryDto: value));
  });
}/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHistoryCountryComboDtoCopyWith<$Res>? get transactionHistoryCountryComboDto {
    if (_self.transactionHistoryCountryComboDto == null) {
    return null;
  }

  return $TransactionHistoryCountryComboDtoCopyWith<$Res>(_self.transactionHistoryCountryComboDto!, (value) {
    return _then(_self.copyWith(transactionHistoryCountryComboDto: value));
  });
}/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonTransactionDetailsDtoCopyWith<$Res>? get transactionHistoryDetailsDto {
    if (_self.transactionHistoryDetailsDto == null) {
    return null;
  }

  return $CommonTransactionDetailsDtoCopyWith<$Res>(_self.transactionHistoryDetailsDto!, (value) {
    return _then(_self.copyWith(transactionHistoryDetailsDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionHistoryState].
extension TransactionHistoryStatePatterns on TransactionHistoryState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadingBeneficiary,  bool isLoadingCountryCombo,  bool isLoadingDetails,  bool isDownloadingOrSharingReceipt,  bool isDownloadingReceipt,  bool hasMore,  bool isSorting,  int page,  String? sortBy,  String? sortOrder,  List<String> countryCodes,  List<String> beneficiaryCodes,  String? keyword,  CommonTransactionDto? commonTransactionDto,  TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto,  TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto,  CommonTransactionDetailsDto? transactionHistoryDetailsDto,  Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> transactionHistorySuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> transactionHistoryBeneficiarySuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> transactionHistoryCountryComboSuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> transactionHistoryDetailsSuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, String>> downloadOrShareReceiptSuccessOrFailureOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that.isLoading,_that.isLoadingBeneficiary,_that.isLoadingCountryCombo,_that.isLoadingDetails,_that.isDownloadingOrSharingReceipt,_that.isDownloadingReceipt,_that.hasMore,_that.isSorting,_that.page,_that.sortBy,_that.sortOrder,_that.countryCodes,_that.beneficiaryCodes,_that.keyword,_that.commonTransactionDto,_that.transactionHistoryBeneficiaryDto,_that.transactionHistoryCountryComboDto,_that.transactionHistoryDetailsDto,_that.transactionHistorySuccessOrFailureOption,_that.transactionHistoryBeneficiarySuccessOrFailureOption,_that.transactionHistoryCountryComboSuccessOrFailureOption,_that.transactionHistoryDetailsSuccessOrFailureOption,_that.downloadOrShareReceiptSuccessOrFailureOption);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoadingBeneficiary,  bool isLoadingCountryCombo,  bool isLoadingDetails,  bool isDownloadingOrSharingReceipt,  bool isDownloadingReceipt,  bool hasMore,  bool isSorting,  int page,  String? sortBy,  String? sortOrder,  List<String> countryCodes,  List<String> beneficiaryCodes,  String? keyword,  CommonTransactionDto? commonTransactionDto,  TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto,  TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto,  CommonTransactionDetailsDto? transactionHistoryDetailsDto,  Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> transactionHistorySuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> transactionHistoryBeneficiarySuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> transactionHistoryCountryComboSuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> transactionHistoryDetailsSuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, String>> downloadOrShareReceiptSuccessOrFailureOption)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryState():
return $default(_that.isLoading,_that.isLoadingBeneficiary,_that.isLoadingCountryCombo,_that.isLoadingDetails,_that.isDownloadingOrSharingReceipt,_that.isDownloadingReceipt,_that.hasMore,_that.isSorting,_that.page,_that.sortBy,_that.sortOrder,_that.countryCodes,_that.beneficiaryCodes,_that.keyword,_that.commonTransactionDto,_that.transactionHistoryBeneficiaryDto,_that.transactionHistoryCountryComboDto,_that.transactionHistoryDetailsDto,_that.transactionHistorySuccessOrFailureOption,_that.transactionHistoryBeneficiarySuccessOrFailureOption,_that.transactionHistoryCountryComboSuccessOrFailureOption,_that.transactionHistoryDetailsSuccessOrFailureOption,_that.downloadOrShareReceiptSuccessOrFailureOption);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isLoadingBeneficiary,  bool isLoadingCountryCombo,  bool isLoadingDetails,  bool isDownloadingOrSharingReceipt,  bool isDownloadingReceipt,  bool hasMore,  bool isSorting,  int page,  String? sortBy,  String? sortOrder,  List<String> countryCodes,  List<String> beneficiaryCodes,  String? keyword,  CommonTransactionDto? commonTransactionDto,  TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto,  TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto,  CommonTransactionDetailsDto? transactionHistoryDetailsDto,  Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> transactionHistorySuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> transactionHistoryBeneficiarySuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> transactionHistoryCountryComboSuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> transactionHistoryDetailsSuccessOrFailureOption,  Option<Either<TransactionHistoryFailure, String>> downloadOrShareReceiptSuccessOrFailureOption)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryState() when $default != null:
return $default(_that.isLoading,_that.isLoadingBeneficiary,_that.isLoadingCountryCombo,_that.isLoadingDetails,_that.isDownloadingOrSharingReceipt,_that.isDownloadingReceipt,_that.hasMore,_that.isSorting,_that.page,_that.sortBy,_that.sortOrder,_that.countryCodes,_that.beneficiaryCodes,_that.keyword,_that.commonTransactionDto,_that.transactionHistoryBeneficiaryDto,_that.transactionHistoryCountryComboDto,_that.transactionHistoryDetailsDto,_that.transactionHistorySuccessOrFailureOption,_that.transactionHistoryBeneficiarySuccessOrFailureOption,_that.transactionHistoryCountryComboSuccessOrFailureOption,_that.transactionHistoryDetailsSuccessOrFailureOption,_that.downloadOrShareReceiptSuccessOrFailureOption);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionHistoryState implements TransactionHistoryState {
  const _TransactionHistoryState({required this.isLoading, required this.isLoadingBeneficiary, required this.isLoadingCountryCombo, required this.isLoadingDetails, required this.isDownloadingOrSharingReceipt, required this.isDownloadingReceipt, required this.hasMore, required this.isSorting, required this.page, this.sortBy, this.sortOrder, required final  List<String> countryCodes, required final  List<String> beneficiaryCodes, this.keyword, this.commonTransactionDto, this.transactionHistoryBeneficiaryDto, this.transactionHistoryCountryComboDto, this.transactionHistoryDetailsDto, required this.transactionHistorySuccessOrFailureOption, required this.transactionHistoryBeneficiarySuccessOrFailureOption, required this.transactionHistoryCountryComboSuccessOrFailureOption, required this.transactionHistoryDetailsSuccessOrFailureOption, required this.downloadOrShareReceiptSuccessOrFailureOption}): _countryCodes = countryCodes,_beneficiaryCodes = beneficiaryCodes;
  

@override final  bool isLoading;
@override final  bool isLoadingBeneficiary;
@override final  bool isLoadingCountryCombo;
@override final  bool isLoadingDetails;
@override final  bool isDownloadingOrSharingReceipt;
@override final  bool isDownloadingReceipt;
@override final  bool hasMore;
@override final  bool isSorting;
@override final  int page;
@override final  String? sortBy;
@override final  String? sortOrder;
 final  List<String> _countryCodes;
@override List<String> get countryCodes {
  if (_countryCodes is EqualUnmodifiableListView) return _countryCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countryCodes);
}

 final  List<String> _beneficiaryCodes;
@override List<String> get beneficiaryCodes {
  if (_beneficiaryCodes is EqualUnmodifiableListView) return _beneficiaryCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beneficiaryCodes);
}

@override final  String? keyword;
@override final  CommonTransactionDto? commonTransactionDto;
@override final  TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto;
@override final  TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto;
@override final  CommonTransactionDetailsDto? transactionHistoryDetailsDto;
@override final  Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> transactionHistorySuccessOrFailureOption;
@override final  Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> transactionHistoryBeneficiarySuccessOrFailureOption;
@override final  Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> transactionHistoryCountryComboSuccessOrFailureOption;
@override final  Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> transactionHistoryDetailsSuccessOrFailureOption;
@override final  Option<Either<TransactionHistoryFailure, String>> downloadOrShareReceiptSuccessOrFailureOption;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryStateCopyWith<_TransactionHistoryState> get copyWith => __$TransactionHistoryStateCopyWithImpl<_TransactionHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingBeneficiary, isLoadingBeneficiary) || other.isLoadingBeneficiary == isLoadingBeneficiary)&&(identical(other.isLoadingCountryCombo, isLoadingCountryCombo) || other.isLoadingCountryCombo == isLoadingCountryCombo)&&(identical(other.isLoadingDetails, isLoadingDetails) || other.isLoadingDetails == isLoadingDetails)&&(identical(other.isDownloadingOrSharingReceipt, isDownloadingOrSharingReceipt) || other.isDownloadingOrSharingReceipt == isDownloadingOrSharingReceipt)&&(identical(other.isDownloadingReceipt, isDownloadingReceipt) || other.isDownloadingReceipt == isDownloadingReceipt)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isSorting, isSorting) || other.isSorting == isSorting)&&(identical(other.page, page) || other.page == page)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._countryCodes, _countryCodes)&&const DeepCollectionEquality().equals(other._beneficiaryCodes, _beneficiaryCodes)&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.commonTransactionDto, commonTransactionDto) || other.commonTransactionDto == commonTransactionDto)&&(identical(other.transactionHistoryBeneficiaryDto, transactionHistoryBeneficiaryDto) || other.transactionHistoryBeneficiaryDto == transactionHistoryBeneficiaryDto)&&(identical(other.transactionHistoryCountryComboDto, transactionHistoryCountryComboDto) || other.transactionHistoryCountryComboDto == transactionHistoryCountryComboDto)&&(identical(other.transactionHistoryDetailsDto, transactionHistoryDetailsDto) || other.transactionHistoryDetailsDto == transactionHistoryDetailsDto)&&(identical(other.transactionHistorySuccessOrFailureOption, transactionHistorySuccessOrFailureOption) || other.transactionHistorySuccessOrFailureOption == transactionHistorySuccessOrFailureOption)&&(identical(other.transactionHistoryBeneficiarySuccessOrFailureOption, transactionHistoryBeneficiarySuccessOrFailureOption) || other.transactionHistoryBeneficiarySuccessOrFailureOption == transactionHistoryBeneficiarySuccessOrFailureOption)&&(identical(other.transactionHistoryCountryComboSuccessOrFailureOption, transactionHistoryCountryComboSuccessOrFailureOption) || other.transactionHistoryCountryComboSuccessOrFailureOption == transactionHistoryCountryComboSuccessOrFailureOption)&&(identical(other.transactionHistoryDetailsSuccessOrFailureOption, transactionHistoryDetailsSuccessOrFailureOption) || other.transactionHistoryDetailsSuccessOrFailureOption == transactionHistoryDetailsSuccessOrFailureOption)&&(identical(other.downloadOrShareReceiptSuccessOrFailureOption, downloadOrShareReceiptSuccessOrFailureOption) || other.downloadOrShareReceiptSuccessOrFailureOption == downloadOrShareReceiptSuccessOrFailureOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,isLoadingBeneficiary,isLoadingCountryCombo,isLoadingDetails,isDownloadingOrSharingReceipt,isDownloadingReceipt,hasMore,isSorting,page,sortBy,sortOrder,const DeepCollectionEquality().hash(_countryCodes),const DeepCollectionEquality().hash(_beneficiaryCodes),keyword,commonTransactionDto,transactionHistoryBeneficiaryDto,transactionHistoryCountryComboDto,transactionHistoryDetailsDto,transactionHistorySuccessOrFailureOption,transactionHistoryBeneficiarySuccessOrFailureOption,transactionHistoryCountryComboSuccessOrFailureOption,transactionHistoryDetailsSuccessOrFailureOption,downloadOrShareReceiptSuccessOrFailureOption]);

@override
String toString() {
  return 'TransactionHistoryState(isLoading: $isLoading, isLoadingBeneficiary: $isLoadingBeneficiary, isLoadingCountryCombo: $isLoadingCountryCombo, isLoadingDetails: $isLoadingDetails, isDownloadingOrSharingReceipt: $isDownloadingOrSharingReceipt, isDownloadingReceipt: $isDownloadingReceipt, hasMore: $hasMore, isSorting: $isSorting, page: $page, sortBy: $sortBy, sortOrder: $sortOrder, countryCodes: $countryCodes, beneficiaryCodes: $beneficiaryCodes, keyword: $keyword, commonTransactionDto: $commonTransactionDto, transactionHistoryBeneficiaryDto: $transactionHistoryBeneficiaryDto, transactionHistoryCountryComboDto: $transactionHistoryCountryComboDto, transactionHistoryDetailsDto: $transactionHistoryDetailsDto, transactionHistorySuccessOrFailureOption: $transactionHistorySuccessOrFailureOption, transactionHistoryBeneficiarySuccessOrFailureOption: $transactionHistoryBeneficiarySuccessOrFailureOption, transactionHistoryCountryComboSuccessOrFailureOption: $transactionHistoryCountryComboSuccessOrFailureOption, transactionHistoryDetailsSuccessOrFailureOption: $transactionHistoryDetailsSuccessOrFailureOption, downloadOrShareReceiptSuccessOrFailureOption: $downloadOrShareReceiptSuccessOrFailureOption)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryStateCopyWith<$Res> implements $TransactionHistoryStateCopyWith<$Res> {
  factory _$TransactionHistoryStateCopyWith(_TransactionHistoryState value, $Res Function(_TransactionHistoryState) _then) = __$TransactionHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoadingBeneficiary, bool isLoadingCountryCombo, bool isLoadingDetails, bool isDownloadingOrSharingReceipt, bool isDownloadingReceipt, bool hasMore, bool isSorting, int page, String? sortBy, String? sortOrder, List<String> countryCodes, List<String> beneficiaryCodes, String? keyword, CommonTransactionDto? commonTransactionDto, TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto, TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto, CommonTransactionDetailsDto? transactionHistoryDetailsDto, Option<Either<TransactionHistoryFailure, TransactionHistoryDto>> transactionHistorySuccessOrFailureOption, Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>> transactionHistoryBeneficiarySuccessOrFailureOption, Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>> transactionHistoryCountryComboSuccessOrFailureOption, Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>> transactionHistoryDetailsSuccessOrFailureOption, Option<Either<TransactionHistoryFailure, String>> downloadOrShareReceiptSuccessOrFailureOption
});


@override $CommonTransactionDtoCopyWith<$Res>? get commonTransactionDto;@override $TransactionHistoryBeneficiaryDtoCopyWith<$Res>? get transactionHistoryBeneficiaryDto;@override $TransactionHistoryCountryComboDtoCopyWith<$Res>? get transactionHistoryCountryComboDto;@override $CommonTransactionDetailsDtoCopyWith<$Res>? get transactionHistoryDetailsDto;

}
/// @nodoc
class __$TransactionHistoryStateCopyWithImpl<$Res>
    implements _$TransactionHistoryStateCopyWith<$Res> {
  __$TransactionHistoryStateCopyWithImpl(this._self, this._then);

  final _TransactionHistoryState _self;
  final $Res Function(_TransactionHistoryState) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoadingBeneficiary = null,Object? isLoadingCountryCombo = null,Object? isLoadingDetails = null,Object? isDownloadingOrSharingReceipt = null,Object? isDownloadingReceipt = null,Object? hasMore = null,Object? isSorting = null,Object? page = null,Object? sortBy = freezed,Object? sortOrder = freezed,Object? countryCodes = null,Object? beneficiaryCodes = null,Object? keyword = freezed,Object? commonTransactionDto = freezed,Object? transactionHistoryBeneficiaryDto = freezed,Object? transactionHistoryCountryComboDto = freezed,Object? transactionHistoryDetailsDto = freezed,Object? transactionHistorySuccessOrFailureOption = null,Object? transactionHistoryBeneficiarySuccessOrFailureOption = null,Object? transactionHistoryCountryComboSuccessOrFailureOption = null,Object? transactionHistoryDetailsSuccessOrFailureOption = null,Object? downloadOrShareReceiptSuccessOrFailureOption = null,}) {
  return _then(_TransactionHistoryState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingBeneficiary: null == isLoadingBeneficiary ? _self.isLoadingBeneficiary : isLoadingBeneficiary // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCountryCombo: null == isLoadingCountryCombo ? _self.isLoadingCountryCombo : isLoadingCountryCombo // ignore: cast_nullable_to_non_nullable
as bool,isLoadingDetails: null == isLoadingDetails ? _self.isLoadingDetails : isLoadingDetails // ignore: cast_nullable_to_non_nullable
as bool,isDownloadingOrSharingReceipt: null == isDownloadingOrSharingReceipt ? _self.isDownloadingOrSharingReceipt : isDownloadingOrSharingReceipt // ignore: cast_nullable_to_non_nullable
as bool,isDownloadingReceipt: null == isDownloadingReceipt ? _self.isDownloadingReceipt : isDownloadingReceipt // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isSorting: null == isSorting ? _self.isSorting : isSorting // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as String?,countryCodes: null == countryCodes ? _self._countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<String>,beneficiaryCodes: null == beneficiaryCodes ? _self._beneficiaryCodes : beneficiaryCodes // ignore: cast_nullable_to_non_nullable
as List<String>,keyword: freezed == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String?,commonTransactionDto: freezed == commonTransactionDto ? _self.commonTransactionDto : commonTransactionDto // ignore: cast_nullable_to_non_nullable
as CommonTransactionDto?,transactionHistoryBeneficiaryDto: freezed == transactionHistoryBeneficiaryDto ? _self.transactionHistoryBeneficiaryDto : transactionHistoryBeneficiaryDto // ignore: cast_nullable_to_non_nullable
as TransactionHistoryBeneficiaryDto?,transactionHistoryCountryComboDto: freezed == transactionHistoryCountryComboDto ? _self.transactionHistoryCountryComboDto : transactionHistoryCountryComboDto // ignore: cast_nullable_to_non_nullable
as TransactionHistoryCountryComboDto?,transactionHistoryDetailsDto: freezed == transactionHistoryDetailsDto ? _self.transactionHistoryDetailsDto : transactionHistoryDetailsDto // ignore: cast_nullable_to_non_nullable
as CommonTransactionDetailsDto?,transactionHistorySuccessOrFailureOption: null == transactionHistorySuccessOrFailureOption ? _self.transactionHistorySuccessOrFailureOption : transactionHistorySuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryDto>>,transactionHistoryBeneficiarySuccessOrFailureOption: null == transactionHistoryBeneficiarySuccessOrFailureOption ? _self.transactionHistoryBeneficiarySuccessOrFailureOption : transactionHistoryBeneficiarySuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>>,transactionHistoryCountryComboSuccessOrFailureOption: null == transactionHistoryCountryComboSuccessOrFailureOption ? _self.transactionHistoryCountryComboSuccessOrFailureOption : transactionHistoryCountryComboSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>>,transactionHistoryDetailsSuccessOrFailureOption: null == transactionHistoryDetailsSuccessOrFailureOption ? _self.transactionHistoryDetailsSuccessOrFailureOption : transactionHistoryDetailsSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>>,downloadOrShareReceiptSuccessOrFailureOption: null == downloadOrShareReceiptSuccessOrFailureOption ? _self.downloadOrShareReceiptSuccessOrFailureOption : downloadOrShareReceiptSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionHistoryFailure, String>>,
  ));
}

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonTransactionDtoCopyWith<$Res>? get commonTransactionDto {
    if (_self.commonTransactionDto == null) {
    return null;
  }

  return $CommonTransactionDtoCopyWith<$Res>(_self.commonTransactionDto!, (value) {
    return _then(_self.copyWith(commonTransactionDto: value));
  });
}/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHistoryBeneficiaryDtoCopyWith<$Res>? get transactionHistoryBeneficiaryDto {
    if (_self.transactionHistoryBeneficiaryDto == null) {
    return null;
  }

  return $TransactionHistoryBeneficiaryDtoCopyWith<$Res>(_self.transactionHistoryBeneficiaryDto!, (value) {
    return _then(_self.copyWith(transactionHistoryBeneficiaryDto: value));
  });
}/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHistoryCountryComboDtoCopyWith<$Res>? get transactionHistoryCountryComboDto {
    if (_self.transactionHistoryCountryComboDto == null) {
    return null;
  }

  return $TransactionHistoryCountryComboDtoCopyWith<$Res>(_self.transactionHistoryCountryComboDto!, (value) {
    return _then(_self.copyWith(transactionHistoryCountryComboDto: value));
  });
}/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonTransactionDetailsDtoCopyWith<$Res>? get transactionHistoryDetailsDto {
    if (_self.transactionHistoryDetailsDto == null) {
    return null;
  }

  return $CommonTransactionDetailsDtoCopyWith<$Res>(_self.transactionHistoryDetailsDto!, (value) {
    return _then(_self.copyWith(transactionHistoryDetailsDto: value));
  });
}
}

// dart format on
