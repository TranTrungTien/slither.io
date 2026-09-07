// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertEntity _$AlertEntityFromJson(Map<String, dynamic> json) {
  return _AlertEntity.fromJson(json);
}

/// @nodoc
mixin _$AlertEntity {
  int get id => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  AlertScope? get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertEntityCopyWith<AlertEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertEntityCopyWith<$Res> {
  factory $AlertEntityCopyWith(
          AlertEntity value, $Res Function(AlertEntity) then) =
      _$AlertEntityCopyWithImpl<$Res, AlertEntity>;
  @useResult
  $Res call(
      {int id,
      String emoji,
      String message,
      @ColorConverter() Color color,
      double duration,
      bool visible,
      AlertScope? scope});
}

/// @nodoc
class _$AlertEntityCopyWithImpl<$Res, $Val extends AlertEntity>
    implements $AlertEntityCopyWith<$Res> {
  _$AlertEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emoji = null,
    Object? message = null,
    Object? color = null,
    Object? duration = null,
    Object? visible = null,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as AlertScope?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertEntityImplCopyWith<$Res>
    implements $AlertEntityCopyWith<$Res> {
  factory _$$AlertEntityImplCopyWith(
          _$AlertEntityImpl value, $Res Function(_$AlertEntityImpl) then) =
      __$$AlertEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String emoji,
      String message,
      @ColorConverter() Color color,
      double duration,
      bool visible,
      AlertScope? scope});
}

/// @nodoc
class __$$AlertEntityImplCopyWithImpl<$Res>
    extends _$AlertEntityCopyWithImpl<$Res, _$AlertEntityImpl>
    implements _$$AlertEntityImplCopyWith<$Res> {
  __$$AlertEntityImplCopyWithImpl(
      _$AlertEntityImpl _value, $Res Function(_$AlertEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? emoji = null,
    Object? message = null,
    Object? color = null,
    Object? duration = null,
    Object? visible = null,
    Object? scope = freezed,
  }) {
    return _then(_$AlertEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as AlertScope?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertEntityImpl implements _AlertEntity {
  const _$AlertEntityImpl(
      {required this.id,
      required this.emoji,
      required this.message,
      @ColorConverter() required this.color,
      required this.duration,
      required this.visible,
      this.scope});

  factory _$AlertEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String emoji;
  @override
  final String message;
  @override
  @ColorConverter()
  final Color color;
  @override
  final double duration;
  @override
  final bool visible;
  @override
  final AlertScope? scope;

  @override
  String toString() {
    return 'AlertEntity(id: $id, emoji: $emoji, message: $message, color: $color, duration: $duration, visible: $visible, scope: $scope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, emoji, message, color, duration, visible, scope);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertEntityImplCopyWith<_$AlertEntityImpl> get copyWith =>
      __$$AlertEntityImplCopyWithImpl<_$AlertEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertEntityImplToJson(
      this,
    );
  }
}

abstract class _AlertEntity implements AlertEntity {
  const factory _AlertEntity(
      {required final int id,
      required final String emoji,
      required final String message,
      @ColorConverter() required final Color color,
      required final double duration,
      required final bool visible,
      final AlertScope? scope}) = _$AlertEntityImpl;

  factory _AlertEntity.fromJson(Map<String, dynamic> json) =
      _$AlertEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get emoji;
  @override
  String get message;
  @override
  @ColorConverter()
  Color get color;
  @override
  double get duration;
  @override
  bool get visible;
  @override
  AlertScope? get scope;
  @override
  @JsonKey(ignore: true)
  _$$AlertEntityImplCopyWith<_$AlertEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
