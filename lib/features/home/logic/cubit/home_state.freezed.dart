// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationLoading value)?  specializationLoading,TResult Function( SpecializationSeccess value)?  specializationSeccess,TResult Function( SpecializationError value)?  specializationError,TResult Function( DoctorsSuccess value)?  doctorsSuccess,TResult Function( DoctorsError value)?  doctorsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSeccess() when specializationSeccess != null:
return specializationSeccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationLoading value)  specializationLoading,required TResult Function( SpecializationSeccess value)  specializationSeccess,required TResult Function( SpecializationError value)  specializationError,required TResult Function( DoctorsSuccess value)  doctorsSuccess,required TResult Function( DoctorsError value)  doctorsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationLoading():
return specializationLoading(_that);case SpecializationSeccess():
return specializationSeccess(_that);case SpecializationError():
return specializationError(_that);case DoctorsSuccess():
return doctorsSuccess(_that);case DoctorsError():
return doctorsError(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationLoading value)?  specializationLoading,TResult? Function( SpecializationSeccess value)?  specializationSeccess,TResult? Function( SpecializationError value)?  specializationError,TResult? Function( DoctorsSuccess value)?  doctorsSuccess,TResult? Function( DoctorsError value)?  doctorsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSeccess() when specializationSeccess != null:
return specializationSeccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationLoading,TResult Function( List<SpecializationData> specializationDataList)?  specializationSeccess,TResult Function( ApiErrorModal? apiErrorModal)?  specializationError,TResult Function( List<DoctorsModal> docotrs)?  doctorsSuccess,TResult Function( ApiErrorModal? apiErrorModal)?  doctorsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSeccess() when specializationSeccess != null:
return specializationSeccess(_that.specializationDataList);case SpecializationError() when specializationError != null:
return specializationError(_that.apiErrorModal);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.docotrs);case DoctorsError() when doctorsError != null:
return doctorsError(_that.apiErrorModal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationLoading,required TResult Function( List<SpecializationData> specializationDataList)  specializationSeccess,required TResult Function( ApiErrorModal? apiErrorModal)  specializationError,required TResult Function( List<DoctorsModal> docotrs)  doctorsSuccess,required TResult Function( ApiErrorModal? apiErrorModal)  doctorsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationLoading():
return specializationLoading();case SpecializationSeccess():
return specializationSeccess(_that.specializationDataList);case SpecializationError():
return specializationError(_that.apiErrorModal);case DoctorsSuccess():
return doctorsSuccess(_that.docotrs);case DoctorsError():
return doctorsError(_that.apiErrorModal);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationLoading,TResult? Function( List<SpecializationData> specializationDataList)?  specializationSeccess,TResult? Function( ApiErrorModal? apiErrorModal)?  specializationError,TResult? Function( List<DoctorsModal> docotrs)?  doctorsSuccess,TResult? Function( ApiErrorModal? apiErrorModal)?  doctorsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSeccess() when specializationSeccess != null:
return specializationSeccess(_that.specializationDataList);case SpecializationError() when specializationError != null:
return specializationError(_that.apiErrorModal);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.docotrs);case DoctorsError() when doctorsError != null:
return doctorsError(_that.apiErrorModal);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpecializationLoading implements HomeState {
  const SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationLoading()';
}


}




/// @nodoc


class SpecializationSeccess implements HomeState {
  const SpecializationSeccess(final  List<SpecializationData> specializationDataList): _specializationDataList = specializationDataList;
  

 final  List<SpecializationData> _specializationDataList;
 List<SpecializationData> get specializationDataList {
  if (_specializationDataList is EqualUnmodifiableListView) return _specializationDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specializationDataList);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSeccessCopyWith<SpecializationSeccess> get copyWith => _$SpecializationSeccessCopyWithImpl<SpecializationSeccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSeccess&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeState.specializationSeccess(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationSeccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationSeccessCopyWith(SpecializationSeccess value, $Res Function(SpecializationSeccess) _then) = _$SpecializationSeccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationData> specializationDataList
});




}
/// @nodoc
class _$SpecializationSeccessCopyWithImpl<$Res>
    implements $SpecializationSeccessCopyWith<$Res> {
  _$SpecializationSeccessCopyWithImpl(this._self, this._then);

  final SpecializationSeccess _self;
  final $Res Function(SpecializationSeccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = null,}) {
  return _then(SpecializationSeccess(
null == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationData>,
  ));
}


}

/// @nodoc


class SpecializationError implements HomeState {
  const SpecializationError(this.apiErrorModal);
  

 final  ApiErrorModal? apiErrorModal;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationErrorCopyWith<SpecializationError> get copyWith => _$SpecializationErrorCopyWithImpl<SpecializationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationError&&(identical(other.apiErrorModal, apiErrorModal) || other.apiErrorModal == apiErrorModal));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModal);

@override
String toString() {
  return 'HomeState.specializationError(apiErrorModal: $apiErrorModal)';
}


}

/// @nodoc
abstract mixin class $SpecializationErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationErrorCopyWith(SpecializationError value, $Res Function(SpecializationError) _then) = _$SpecializationErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModal? apiErrorModal
});




}
/// @nodoc
class _$SpecializationErrorCopyWithImpl<$Res>
    implements $SpecializationErrorCopyWith<$Res> {
  _$SpecializationErrorCopyWithImpl(this._self, this._then);

  final SpecializationError _self;
  final $Res Function(SpecializationError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModal = freezed,}) {
  return _then(SpecializationError(
freezed == apiErrorModal ? _self.apiErrorModal : apiErrorModal // ignore: cast_nullable_to_non_nullable
as ApiErrorModal?,
  ));
}


}

/// @nodoc


class DoctorsSuccess implements HomeState {
  const DoctorsSuccess(final  List<DoctorsModal> docotrs): _docotrs = docotrs;
  

 final  List<DoctorsModal> _docotrs;
 List<DoctorsModal> get docotrs {
  if (_docotrs is EqualUnmodifiableListView) return _docotrs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_docotrs);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<DoctorsSuccess> get copyWith => _$DoctorsSuccessCopyWithImpl<DoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess&&const DeepCollectionEquality().equals(other._docotrs, _docotrs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_docotrs));

@override
String toString() {
  return 'HomeState.doctorsSuccess(docotrs: $docotrs)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess value, $Res Function(DoctorsSuccess) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<DoctorsModal> docotrs
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<$Res>
    implements $DoctorsSuccessCopyWith<$Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess _self;
  final $Res Function(DoctorsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? docotrs = null,}) {
  return _then(DoctorsSuccess(
null == docotrs ? _self._docotrs : docotrs // ignore: cast_nullable_to_non_nullable
as List<DoctorsModal>,
  ));
}


}

/// @nodoc


class DoctorsError implements HomeState {
  const DoctorsError(this.apiErrorModal);
  

 final  ApiErrorModal? apiErrorModal;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsErrorCopyWith<DoctorsError> get copyWith => _$DoctorsErrorCopyWithImpl<DoctorsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsError&&(identical(other.apiErrorModal, apiErrorModal) || other.apiErrorModal == apiErrorModal));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModal);

@override
String toString() {
  return 'HomeState.doctorsError(apiErrorModal: $apiErrorModal)';
}


}

/// @nodoc
abstract mixin class $DoctorsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsErrorCopyWith(DoctorsError value, $Res Function(DoctorsError) _then) = _$DoctorsErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModal? apiErrorModal
});




}
/// @nodoc
class _$DoctorsErrorCopyWithImpl<$Res>
    implements $DoctorsErrorCopyWith<$Res> {
  _$DoctorsErrorCopyWithImpl(this._self, this._then);

  final DoctorsError _self;
  final $Res Function(DoctorsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModal = freezed,}) {
  return _then(DoctorsError(
freezed == apiErrorModal ? _self.apiErrorModal : apiErrorModal // ignore: cast_nullable_to_non_nullable
as ApiErrorModal?,
  ));
}


}

// dart format on
