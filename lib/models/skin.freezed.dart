// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnakeSkin _$SnakeSkinFromJson(Map<String, dynamic> json) {
  return _SnakeSkin.fromJson(json);
}

/// @nodoc
mixin _$SnakeSkin {
  String get id => throw _privateConstructorUsedError;
  @ColorConverter()
  Color? get primary => throw _privateConstructorUsedError;
  @ColorConverter()
  Color? get secondary => throw _privateConstructorUsedError;
  @ColorConverter()
  List<Color> get tint => throw _privateConstructorUsedError;
  @ColorConverter()
  List<Color>? get boostTint => throw _privateConstructorUsedError;
  List<String> get texture => throw _privateConstructorUsedError;
  @Vector2Converter()
  Vector2 get size => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnakeSkinCopyWith<SnakeSkin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnakeSkinCopyWith<$Res> {
  factory $SnakeSkinCopyWith(SnakeSkin value, $Res Function(SnakeSkin) then) =
      _$SnakeSkinCopyWithImpl<$Res, SnakeSkin>;
  @useResult
  $Res call(
      {String id,
      @ColorConverter() Color? primary,
      @ColorConverter() Color? secondary,
      @ColorConverter() List<Color> tint,
      @ColorConverter() List<Color>? boostTint,
      List<String> texture,
      @Vector2Converter() Vector2 size,
      int price});
}

/// @nodoc
class _$SnakeSkinCopyWithImpl<$Res, $Val extends SnakeSkin>
    implements $SnakeSkinCopyWith<$Res> {
  _$SnakeSkinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tint = null,
    Object? boostTint = freezed,
    Object? texture = null,
    Object? size = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Color?,
      tint: null == tint
          ? _value.tint
          : tint // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      boostTint: freezed == boostTint
          ? _value.boostTint
          : boostTint // ignore: cast_nullable_to_non_nullable
              as List<Color>?,
      texture: null == texture
          ? _value.texture
          : texture // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector2,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnakeSkinImplCopyWith<$Res>
    implements $SnakeSkinCopyWith<$Res> {
  factory _$$SnakeSkinImplCopyWith(
          _$SnakeSkinImpl value, $Res Function(_$SnakeSkinImpl) then) =
      __$$SnakeSkinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @ColorConverter() Color? primary,
      @ColorConverter() Color? secondary,
      @ColorConverter() List<Color> tint,
      @ColorConverter() List<Color>? boostTint,
      List<String> texture,
      @Vector2Converter() Vector2 size,
      int price});
}

/// @nodoc
class __$$SnakeSkinImplCopyWithImpl<$Res>
    extends _$SnakeSkinCopyWithImpl<$Res, _$SnakeSkinImpl>
    implements _$$SnakeSkinImplCopyWith<$Res> {
  __$$SnakeSkinImplCopyWithImpl(
      _$SnakeSkinImpl _value, $Res Function(_$SnakeSkinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tint = null,
    Object? boostTint = freezed,
    Object? texture = null,
    Object? size = null,
    Object? price = null,
  }) {
    return _then(_$SnakeSkinImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Color?,
      tint: null == tint
          ? _value._tint
          : tint // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      boostTint: freezed == boostTint
          ? _value._boostTint
          : boostTint // ignore: cast_nullable_to_non_nullable
              as List<Color>?,
      texture: null == texture
          ? _value._texture
          : texture // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Vector2,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnakeSkinImpl implements _SnakeSkin {
  const _$SnakeSkinImpl(
      {required this.id,
      @ColorConverter() this.primary,
      @ColorConverter() this.secondary,
      @ColorConverter() required final List<Color> tint,
      @ColorConverter() final List<Color>? boostTint,
      required final List<String> texture,
      @Vector2Converter() required this.size,
      required this.price})
      : _tint = tint,
        _boostTint = boostTint,
        _texture = texture;

  factory _$SnakeSkinImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnakeSkinImplFromJson(json);

  @override
  final String id;
  @override
  @ColorConverter()
  final Color? primary;
  @override
  @ColorConverter()
  final Color? secondary;
  final List<Color> _tint;
  @override
  @ColorConverter()
  List<Color> get tint {
    if (_tint is EqualUnmodifiableListView) return _tint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tint);
  }

  final List<Color>? _boostTint;
  @override
  @ColorConverter()
  List<Color>? get boostTint {
    final value = _boostTint;
    if (value == null) return null;
    if (_boostTint is EqualUnmodifiableListView) return _boostTint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _texture;
  @override
  List<String> get texture {
    if (_texture is EqualUnmodifiableListView) return _texture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texture);
  }

  @override
  @Vector2Converter()
  final Vector2 size;
  @override
  final int price;

  @override
  String toString() {
    return 'SnakeSkin(id: $id, primary: $primary, secondary: $secondary, tint: $tint, boostTint: $boostTint, texture: $texture, size: $size, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnakeSkinImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            const DeepCollectionEquality().equals(other._tint, _tint) &&
            const DeepCollectionEquality()
                .equals(other._boostTint, _boostTint) &&
            const DeepCollectionEquality().equals(other._texture, _texture) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      primary,
      secondary,
      const DeepCollectionEquality().hash(_tint),
      const DeepCollectionEquality().hash(_boostTint),
      const DeepCollectionEquality().hash(_texture),
      size,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnakeSkinImplCopyWith<_$SnakeSkinImpl> get copyWith =>
      __$$SnakeSkinImplCopyWithImpl<_$SnakeSkinImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnakeSkinImplToJson(
      this,
    );
  }
}

abstract class _SnakeSkin implements SnakeSkin {
  const factory _SnakeSkin(
      {required final String id,
      @ColorConverter() final Color? primary,
      @ColorConverter() final Color? secondary,
      @ColorConverter() required final List<Color> tint,
      @ColorConverter() final List<Color>? boostTint,
      required final List<String> texture,
      @Vector2Converter() required final Vector2 size,
      required final int price}) = _$SnakeSkinImpl;

  factory _SnakeSkin.fromJson(Map<String, dynamic> json) =
      _$SnakeSkinImpl.fromJson;

  @override
  String get id;
  @override
  @ColorConverter()
  Color? get primary;
  @override
  @ColorConverter()
  Color? get secondary;
  @override
  @ColorConverter()
  List<Color> get tint;
  @override
  @ColorConverter()
  List<Color>? get boostTint;
  @override
  List<String> get texture;
  @override
  @Vector2Converter()
  Vector2 get size;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$SnakeSkinImplCopyWith<_$SnakeSkinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
