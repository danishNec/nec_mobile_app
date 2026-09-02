// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchesEvent()';
}


}

/// @nodoc
class $BranchesEventCopyWith<$Res>  {
$BranchesEventCopyWith(BranchesEvent _, $Res Function(BranchesEvent) __);
}


/// Adds pattern-matching-related methods to [BranchesEvent].
extension BranchesEventPatterns on BranchesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetBranchesList value)?  getBranchesList,TResult Function( _SearchBranches value)?  searchBranches,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBranchesList() when getBranchesList != null:
return getBranchesList(_that);case _SearchBranches() when searchBranches != null:
return searchBranches(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetBranchesList value)  getBranchesList,required TResult Function( _SearchBranches value)  searchBranches,}){
final _that = this;
switch (_that) {
case _GetBranchesList():
return getBranchesList(_that);case _SearchBranches():
return searchBranches(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetBranchesList value)?  getBranchesList,TResult? Function( _SearchBranches value)?  searchBranches,}){
final _that = this;
switch (_that) {
case _GetBranchesList() when getBranchesList != null:
return getBranchesList(_that);case _SearchBranches() when searchBranches != null:
return searchBranches(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getBranchesList,TResult Function( String query)?  searchBranches,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBranchesList() when getBranchesList != null:
return getBranchesList();case _SearchBranches() when searchBranches != null:
return searchBranches(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getBranchesList,required TResult Function( String query)  searchBranches,}) {final _that = this;
switch (_that) {
case _GetBranchesList():
return getBranchesList();case _SearchBranches():
return searchBranches(_that.query);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getBranchesList,TResult? Function( String query)?  searchBranches,}) {final _that = this;
switch (_that) {
case _GetBranchesList() when getBranchesList != null:
return getBranchesList();case _SearchBranches() when searchBranches != null:
return searchBranches(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _GetBranchesList implements BranchesEvent {
  const _GetBranchesList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBranchesList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BranchesEvent.getBranchesList()';
}


}




/// @nodoc


class _SearchBranches implements BranchesEvent {
  const _SearchBranches(this.query);
  

 final  String query;

/// Create a copy of BranchesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchBranchesCopyWith<_SearchBranches> get copyWith => __$SearchBranchesCopyWithImpl<_SearchBranches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchBranches&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'BranchesEvent.searchBranches(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchBranchesCopyWith<$Res> implements $BranchesEventCopyWith<$Res> {
  factory _$SearchBranchesCopyWith(_SearchBranches value, $Res Function(_SearchBranches) _then) = __$SearchBranchesCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchBranchesCopyWithImpl<$Res>
    implements _$SearchBranchesCopyWith<$Res> {
  __$SearchBranchesCopyWithImpl(this._self, this._then);

  final _SearchBranches _self;
  final $Res Function(_SearchBranches) _then;

/// Create a copy of BranchesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchBranches(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BranchesState {

 bool get isLoading; bool get isSearching; String get searchQuery; Option<Either<BranchesFailure, BranchesDto>> get branchesListFailureOrSuccessOption;
/// Create a copy of BranchesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchesStateCopyWith<BranchesState> get copyWith => _$BranchesStateCopyWithImpl<BranchesState>(this as BranchesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.branchesListFailureOrSuccessOption, branchesListFailureOrSuccessOption) || other.branchesListFailureOrSuccessOption == branchesListFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSearching,searchQuery,branchesListFailureOrSuccessOption);

@override
String toString() {
  return 'BranchesState(isLoading: $isLoading, isSearching: $isSearching, searchQuery: $searchQuery, branchesListFailureOrSuccessOption: $branchesListFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $BranchesStateCopyWith<$Res>  {
  factory $BranchesStateCopyWith(BranchesState value, $Res Function(BranchesState) _then) = _$BranchesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isSearching, String searchQuery, Option<Either<BranchesFailure, BranchesDto>> branchesListFailureOrSuccessOption
});




}
/// @nodoc
class _$BranchesStateCopyWithImpl<$Res>
    implements $BranchesStateCopyWith<$Res> {
  _$BranchesStateCopyWithImpl(this._self, this._then);

  final BranchesState _self;
  final $Res Function(BranchesState) _then;

/// Create a copy of BranchesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isSearching = null,Object? searchQuery = null,Object? branchesListFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,branchesListFailureOrSuccessOption: null == branchesListFailureOrSuccessOption ? _self.branchesListFailureOrSuccessOption : branchesListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BranchesFailure, BranchesDto>>,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchesState].
extension BranchesStatePatterns on BranchesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchesState value)  $default,){
final _that = this;
switch (_that) {
case _BranchesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchesState value)?  $default,){
final _that = this;
switch (_that) {
case _BranchesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isSearching,  String searchQuery,  Option<Either<BranchesFailure, BranchesDto>> branchesListFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchesState() when $default != null:
return $default(_that.isLoading,_that.isSearching,_that.searchQuery,_that.branchesListFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isSearching,  String searchQuery,  Option<Either<BranchesFailure, BranchesDto>> branchesListFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _BranchesState():
return $default(_that.isLoading,_that.isSearching,_that.searchQuery,_that.branchesListFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isSearching,  String searchQuery,  Option<Either<BranchesFailure, BranchesDto>> branchesListFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _BranchesState() when $default != null:
return $default(_that.isLoading,_that.isSearching,_that.searchQuery,_that.branchesListFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _BranchesState implements BranchesState {
  const _BranchesState({required this.isLoading, required this.isSearching, required this.searchQuery, required this.branchesListFailureOrSuccessOption});
  

@override final  bool isLoading;
@override final  bool isSearching;
@override final  String searchQuery;
@override final  Option<Either<BranchesFailure, BranchesDto>> branchesListFailureOrSuccessOption;

/// Create a copy of BranchesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchesStateCopyWith<_BranchesState> get copyWith => __$BranchesStateCopyWithImpl<_BranchesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.branchesListFailureOrSuccessOption, branchesListFailureOrSuccessOption) || other.branchesListFailureOrSuccessOption == branchesListFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isSearching,searchQuery,branchesListFailureOrSuccessOption);

@override
String toString() {
  return 'BranchesState(isLoading: $isLoading, isSearching: $isSearching, searchQuery: $searchQuery, branchesListFailureOrSuccessOption: $branchesListFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$BranchesStateCopyWith<$Res> implements $BranchesStateCopyWith<$Res> {
  factory _$BranchesStateCopyWith(_BranchesState value, $Res Function(_BranchesState) _then) = __$BranchesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isSearching, String searchQuery, Option<Either<BranchesFailure, BranchesDto>> branchesListFailureOrSuccessOption
});




}
/// @nodoc
class __$BranchesStateCopyWithImpl<$Res>
    implements _$BranchesStateCopyWith<$Res> {
  __$BranchesStateCopyWithImpl(this._self, this._then);

  final _BranchesState _self;
  final $Res Function(_BranchesState) _then;

/// Create a copy of BranchesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isSearching = null,Object? searchQuery = null,Object? branchesListFailureOrSuccessOption = null,}) {
  return _then(_BranchesState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,branchesListFailureOrSuccessOption: null == branchesListFailureOrSuccessOption ? _self.branchesListFailureOrSuccessOption : branchesListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BranchesFailure, BranchesDto>>,
  ));
}


}

// dart format on
