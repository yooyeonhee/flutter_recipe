// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chef_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChefProfile _$ChefProfileFromJson(Map<String, dynamic> json) {
  return _ChefProfile.fromJson(json);
}

/// @nodoc
mixin _$ChefProfile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this ChefProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChefProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChefProfileCopyWith<ChefProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChefProfileCopyWith<$Res> {
  factory $ChefProfileCopyWith(
          ChefProfile value, $Res Function(ChefProfile) then) =
      _$ChefProfileCopyWithImpl<$Res, ChefProfile>;
  @useResult
  $Res call({int id, String name, String image, String address});
}

/// @nodoc
class _$ChefProfileCopyWithImpl<$Res, $Val extends ChefProfile>
    implements $ChefProfileCopyWith<$Res> {
  _$ChefProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChefProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChefProfileImplCopyWith<$Res>
    implements $ChefProfileCopyWith<$Res> {
  factory _$$ChefProfileImplCopyWith(
          _$ChefProfileImpl value, $Res Function(_$ChefProfileImpl) then) =
      __$$ChefProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image, String address});
}

/// @nodoc
class __$$ChefProfileImplCopyWithImpl<$Res>
    extends _$ChefProfileCopyWithImpl<$Res, _$ChefProfileImpl>
    implements _$$ChefProfileImplCopyWith<$Res> {
  __$$ChefProfileImplCopyWithImpl(
      _$ChefProfileImpl _value, $Res Function(_$ChefProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChefProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? address = null,
  }) {
    return _then(_$ChefProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChefProfileImpl implements _ChefProfile {
  const _$ChefProfileImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.address});

  factory _$ChefProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChefProfileImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String address;

  @override
  String toString() {
    return 'ChefProfile(id: $id, name: $name, image: $image, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChefProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, address);

  /// Create a copy of ChefProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChefProfileImplCopyWith<_$ChefProfileImpl> get copyWith =>
      __$$ChefProfileImplCopyWithImpl<_$ChefProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChefProfileImplToJson(
      this,
    );
  }
}

abstract class _ChefProfile implements ChefProfile {
  const factory _ChefProfile(
      {required final int id,
      required final String name,
      required final String image,
      required final String address}) = _$ChefProfileImpl;

  factory _ChefProfile.fromJson(Map<String, dynamic> json) =
      _$ChefProfileImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get address;

  /// Create a copy of ChefProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChefProfileImplCopyWith<_$ChefProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
