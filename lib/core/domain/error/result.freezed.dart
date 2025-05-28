// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<D, E extends Error> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(E error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(D data)? success,
    TResult? Function(E error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess<D, E> value) success,
    required TResult Function(ResultError<D, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultSuccess<D, E> value)? success,
    TResult? Function(ResultError<D, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess<D, E> value)? success,
    TResult Function(ResultError<D, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<D, E extends Error, $Res> {
  factory $ResultCopyWith(
          Result<D, E> value, $Res Function(Result<D, E>) then) =
      _$ResultCopyWithImpl<D, E, $Res, Result<D, E>>;
}

/// @nodoc
class _$ResultCopyWithImpl<D, E extends Error, $Res, $Val extends Result<D, E>>
    implements $ResultCopyWith<D, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<D, E extends Error, $Res> {
  factory _$$ResultSuccessImplCopyWith(_$ResultSuccessImpl<D, E> value,
          $Res Function(_$ResultSuccessImpl<D, E>) then) =
      __$$ResultSuccessImplCopyWithImpl<D, E, $Res>;
  @useResult
  $Res call({D data});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<D, E extends Error, $Res>
    extends _$ResultCopyWithImpl<D, E, $Res, _$ResultSuccessImpl<D, E>>
    implements _$$ResultSuccessImplCopyWith<D, E, $Res> {
  __$$ResultSuccessImplCopyWithImpl(_$ResultSuccessImpl<D, E> _value,
      $Res Function(_$ResultSuccessImpl<D, E>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultSuccessImpl<D, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as D,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl<D, E extends Error> implements ResultSuccess<D, E> {
  const _$ResultSuccessImpl(this.data);

  @override
  final D data;

  @override
  String toString() {
    return 'Result<$D, $E>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl<D, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<D, E, _$ResultSuccessImpl<D, E>> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<D, E, _$ResultSuccessImpl<D, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(E error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(D data)? success,
    TResult? Function(E error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess<D, E> value) success,
    required TResult Function(ResultError<D, E> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultSuccess<D, E> value)? success,
    TResult? Function(ResultError<D, E> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess<D, E> value)? success,
    TResult Function(ResultError<D, E> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResultSuccess<D, E extends Error> implements Result<D, E> {
  const factory ResultSuccess(final D data) = _$ResultSuccessImpl<D, E>;

  D get data;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultSuccessImplCopyWith<D, E, _$ResultSuccessImpl<D, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorImplCopyWith<D, E extends Error, $Res> {
  factory _$$ResultErrorImplCopyWith(_$ResultErrorImpl<D, E> value,
          $Res Function(_$ResultErrorImpl<D, E>) then) =
      __$$ResultErrorImplCopyWithImpl<D, E, $Res>;
  @useResult
  $Res call({E error});
}

/// @nodoc
class __$$ResultErrorImplCopyWithImpl<D, E extends Error, $Res>
    extends _$ResultCopyWithImpl<D, E, $Res, _$ResultErrorImpl<D, E>>
    implements _$$ResultErrorImplCopyWith<D, E, $Res> {
  __$$ResultErrorImplCopyWithImpl(_$ResultErrorImpl<D, E> _value,
      $Res Function(_$ResultErrorImpl<D, E>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ResultErrorImpl<D, E>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$ResultErrorImpl<D, E extends Error> implements ResultError<D, E> {
  const _$ResultErrorImpl(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'Result<$D, $E>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultErrorImpl<D, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorImplCopyWith<D, E, _$ResultErrorImpl<D, E>> get copyWith =>
      __$$ResultErrorImplCopyWithImpl<D, E, _$ResultErrorImpl<D, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(E error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(D data)? success,
    TResult? Function(E error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultSuccess<D, E> value) success,
    required TResult Function(ResultError<D, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultSuccess<D, E> value)? success,
    TResult? Function(ResultError<D, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultSuccess<D, E> value)? success,
    TResult Function(ResultError<D, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError<D, E extends Error> implements Result<D, E> {
  const factory ResultError(final E error) = _$ResultErrorImpl<D, E>;

  E get error;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultErrorImplCopyWith<D, E, _$ResultErrorImpl<D, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
