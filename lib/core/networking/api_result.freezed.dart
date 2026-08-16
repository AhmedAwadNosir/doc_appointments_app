// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiReslut<t> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiReslut<t>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiReslut<$t>()';
}


}

/// @nodoc
class $ApiReslutCopyWith<t,$Res>  {
$ApiReslutCopyWith(ApiReslut<t> _, $Res Function(ApiReslut<t>) __);
}


/// Adds pattern-matching-related methods to [ApiReslut].
extension ApiReslutPatterns<t> on ApiReslut<t> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Success<t> value)?  success,TResult Function( Failure<t> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Success<t> value)  success,required TResult Function( Failure<t> value)  failure,}){
final _that = this;
switch (_that) {
case Success():
return success(_that);case Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Success<t> value)?  success,TResult? Function( Failure<t> value)?  failure,}){
final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( t data)?  success,TResult Function( ErrorHandler errorHandler)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that.data);case Failure() when failure != null:
return failure(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( t data)  success,required TResult Function( ErrorHandler errorHandler)  failure,}) {final _that = this;
switch (_that) {
case Success():
return success(_that.data);case Failure():
return failure(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( t data)?  success,TResult? Function( ErrorHandler errorHandler)?  failure,}) {final _that = this;
switch (_that) {
case Success() when success != null:
return success(_that.data);case Failure() when failure != null:
return failure(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class Success<t> implements ApiReslut<t> {
   Success(this.data);
  

 final  t data;

/// Create a copy of ApiReslut
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<t, Success<t>> get copyWith => _$SuccessCopyWithImpl<t, Success<t>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<t>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiReslut<$t>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<t,$Res> implements $ApiReslutCopyWith<t, $Res> {
  factory $SuccessCopyWith(Success<t> value, $Res Function(Success<t>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 t data
});




}
/// @nodoc
class _$SuccessCopyWithImpl<t,$Res>
    implements $SuccessCopyWith<t, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<t> _self;
  final $Res Function(Success<t>) _then;

/// Create a copy of ApiReslut
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Success<t>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as t,
  ));
}


}

/// @nodoc


class Failure<t> implements ApiReslut<t> {
   Failure(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of ApiReslut
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<t, Failure<t>> get copyWith => _$FailureCopyWithImpl<t, Failure<t>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<t>&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'ApiReslut<$t>.failure(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<t,$Res> implements $ApiReslutCopyWith<t, $Res> {
  factory $FailureCopyWith(Failure<t> value, $Res Function(Failure<t>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$FailureCopyWithImpl<t,$Res>
    implements $FailureCopyWith<t, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<t> _self;
  final $Res Function(Failure<t>) _then;

/// Create a copy of ApiReslut
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(Failure<t>(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
