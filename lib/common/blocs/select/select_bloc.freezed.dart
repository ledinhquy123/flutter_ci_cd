// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectEvent<T> {

 T get value;
/// Create a copy of SelectEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectEventCopyWith<T, SelectEvent<T>> get copyWith => _$SelectEventCopyWithImpl<T, SelectEvent<T>>(this as SelectEvent<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectEvent<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'SelectEvent<$T>(value: $value)';
}


}

/// @nodoc
abstract mixin class $SelectEventCopyWith<T,$Res>  {
  factory $SelectEventCopyWith(SelectEvent<T> value, $Res Function(SelectEvent<T>) _then) = _$SelectEventCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$SelectEventCopyWithImpl<T,$Res>
    implements $SelectEventCopyWith<T, $Res> {
  _$SelectEventCopyWithImpl(this._self, this._then);

  final SelectEvent<T> _self;
  final $Res Function(SelectEvent<T>) _then;

/// Create a copy of SelectEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectEvent].
extension SelectEventPatterns<T> on SelectEvent<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Select<T> value)?  select,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Select() when select != null:
return select(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Select<T> value)  select,}){
final _that = this;
switch (_that) {
case Select():
return select(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Select<T> value)?  select,}){
final _that = this;
switch (_that) {
case Select() when select != null:
return select(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T value)?  select,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Select() when select != null:
return select(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T value)  select,}) {final _that = this;
switch (_that) {
case Select():
return select(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T value)?  select,}) {final _that = this;
switch (_that) {
case Select() when select != null:
return select(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class Select<T> implements SelectEvent<T> {
  const Select({required this.value});
  

@override final  T value;

/// Create a copy of SelectEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectCopyWith<T, Select<T>> get copyWith => _$SelectCopyWithImpl<T, Select<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Select<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'SelectEvent<$T>.select(value: $value)';
}


}

/// @nodoc
abstract mixin class $SelectCopyWith<T,$Res> implements $SelectEventCopyWith<T, $Res> {
  factory $SelectCopyWith(Select<T> value, $Res Function(Select<T>) _then) = _$SelectCopyWithImpl;
@override @useResult
$Res call({
 T value
});




}
/// @nodoc
class _$SelectCopyWithImpl<T,$Res>
    implements $SelectCopyWith<T, $Res> {
  _$SelectCopyWithImpl(this._self, this._then);

  final Select<T> _self;
  final $Res Function(Select<T>) _then;

/// Create a copy of SelectEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(Select<T>(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc
mixin _$SelectState<T> {

 T? get value;
/// Create a copy of SelectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectStateCopyWith<T, SelectState<T>> get copyWith => _$SelectStateCopyWithImpl<T, SelectState<T>>(this as SelectState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectState<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'SelectState<$T>(value: $value)';
}


}

/// @nodoc
abstract mixin class $SelectStateCopyWith<T,$Res>  {
  factory $SelectStateCopyWith(SelectState<T> value, $Res Function(SelectState<T>) _then) = _$SelectStateCopyWithImpl;
@useResult
$Res call({
 T? value
});




}
/// @nodoc
class _$SelectStateCopyWithImpl<T,$Res>
    implements $SelectStateCopyWith<T, $Res> {
  _$SelectStateCopyWithImpl(this._self, this._then);

  final SelectState<T> _self;
  final $Res Function(SelectState<T>) _then;

/// Create a copy of SelectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectState].
extension SelectStatePatterns<T> on SelectState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectState<T> value)  $default,){
final _that = this;
switch (_that) {
case _SelectState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _SelectState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectState() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T? value)  $default,) {final _that = this;
switch (_that) {
case _SelectState():
return $default(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T? value)?  $default,) {final _that = this;
switch (_that) {
case _SelectState() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _SelectState<T> implements SelectState<T> {
  const _SelectState({this.value});
  

@override final  T? value;

/// Create a copy of SelectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectStateCopyWith<T, _SelectState<T>> get copyWith => __$SelectStateCopyWithImpl<T, _SelectState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectState<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'SelectState<$T>(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SelectStateCopyWith<T,$Res> implements $SelectStateCopyWith<T, $Res> {
  factory _$SelectStateCopyWith(_SelectState<T> value, $Res Function(_SelectState<T>) _then) = __$SelectStateCopyWithImpl;
@override @useResult
$Res call({
 T? value
});




}
/// @nodoc
class __$SelectStateCopyWithImpl<T,$Res>
    implements _$SelectStateCopyWith<T, $Res> {
  __$SelectStateCopyWithImpl(this._self, this._then);

  final _SelectState<T> _self;
  final $Res Function(_SelectState<T>) _then;

/// Create a copy of SelectState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_SelectState<T>(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
