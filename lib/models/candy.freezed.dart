// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CandyEntity _$CandyEntityFromJson(Map<String, dynamic> json) {
  return _CandyEntity.fromJson(json);
}

/// @nodoc
mixin _$CandyEntity {
  String get id => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  @Vector2Converter()
  Vector2 get position => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  CandyType get type => throw _privateConstructorUsedError;
  @Vector2Converter()
  Vector2? get eatenAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandyEntityCopyWith<CandyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandyEntityCopyWith<$Res> {
  factory $CandyEntityCopyWith(
          CandyEntity value, $Res Function(CandyEntity) then) =
      _$CandyEntityCopyWithImpl<$Res, CandyEntity>;
  @useResult
  $Res call(
      {String id,
      int size,
      @Vector2Converter() Vector2 position,
      @ColorConverter() Color color,
      CandyType type,
      @Vector2Converter() Vector2? eatenAt});
}

/// @nodoc
class _$CandyEntityCopyWithImpl<$Res, $Val extends CandyEntity>
    implements $CandyEntityCopyWith<$Res> {
  _$CandyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? position = null,
    Object? color = null,
    Object? type = null,
    Object? eatenAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CandyType,
      eatenAt: freezed == eatenAt
          ? _value.eatenAt
          : eatenAt // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CandyEntityImplCopyWith<$Res>
    implements $CandyEntityCopyWith<$Res> {
  factory _$$CandyEntityImplCopyWith(
          _$CandyEntityImpl value, $Res Function(_$CandyEntityImpl) then) =
      __$$CandyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int size,
      @Vector2Converter() Vector2 position,
      @ColorConverter() Color color,
      CandyType type,
      @Vector2Converter() Vector2? eatenAt});
}

/// @nodoc
class __$$CandyEntityImplCopyWithImpl<$Res>
    extends _$CandyEntityCopyWithImpl<$Res, _$CandyEntityImpl>
    implements _$$CandyEntityImplCopyWith<$Res> {
  __$$CandyEntityImplCopyWithImpl(
      _$CandyEntityImpl _value, $Res Function(_$CandyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? position = null,
    Object? color = null,
    Object? type = null,
    Object? eatenAt = freezed,
  }) {
    return _then(_$CandyEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Vector2,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CandyType,
      eatenAt: freezed == eatenAt
          ? _value.eatenAt
          : eatenAt // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandyEntityImpl implements _CandyEntity {
  const _$CandyEntityImpl(
      {required this.id,
      required this.size,
      @Vector2Converter() required this.position,
      @ColorConverter() required this.color,
      required this.type,
      @Vector2Converter() this.eatenAt});

  factory _$CandyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandyEntityImplFromJson(json);

  @override
  final String id;
  @override
  final int size;
  @override
  @Vector2Converter()
  final Vector2 position;
  @override
  @ColorConverter()
  final Color color;
  @override
  final CandyType type;
  @override
  @Vector2Converter()
  final Vector2? eatenAt;

  @override
  String toString() {
    return 'CandyEntity(id: $id, size: $size, position: $position, color: $color, type: $type, eatenAt: $eatenAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.eatenAt, eatenAt) || other.eatenAt == eatenAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, size, position, color, type, eatenAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CandyEntityImplCopyWith<_$CandyEntityImpl> get copyWith =>
      __$$CandyEntityImplCopyWithImpl<_$CandyEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandyEntityImplToJson(
      this,
    );
  }
}

abstract class _CandyEntity implements CandyEntity {
  const factory _CandyEntity(
      {required final String id,
      required final int size,
      @Vector2Converter() required final Vector2 position,
      @ColorConverter() required final Color color,
      required final CandyType type,
      @Vector2Converter() final Vector2? eatenAt}) = _$CandyEntityImpl;

  factory _CandyEntity.fromJson(Map<String, dynamic> json) =
      _$CandyEntityImpl.fromJson;

  @override
  String get id;
  @override
  int get size;
  @override
  @Vector2Converter()
  Vector2 get position;
  @override
  @ColorConverter()
  Color get color;
  @override
  CandyType get type;
  @override
  @Vector2Converter()
  Vector2? get eatenAt;
  @override
  @JsonKey(ignore: true)
  _$$CandyEntityImplCopyWith<_$CandyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
