// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnakeDescription {
  double get length => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  double get spacingAtHead => throw _privateConstructorUsedError;
  double get spacingAtTail => throw _privateConstructorUsedError;
  double get turnSpeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnakeDescriptionCopyWith<SnakeDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnakeDescriptionCopyWith<$Res> {
  factory $SnakeDescriptionCopyWith(
          SnakeDescription value, $Res Function(SnakeDescription) then) =
      _$SnakeDescriptionCopyWithImpl<$Res, SnakeDescription>;
  @useResult
  $Res call(
      {double length,
      double radius,
      double spacingAtHead,
      double spacingAtTail,
      double turnSpeed});
}

/// @nodoc
class _$SnakeDescriptionCopyWithImpl<$Res, $Val extends SnakeDescription>
    implements $SnakeDescriptionCopyWith<$Res> {
  _$SnakeDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? radius = null,
    Object? spacingAtHead = null,
    Object? spacingAtTail = null,
    Object? turnSpeed = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      spacingAtHead: null == spacingAtHead
          ? _value.spacingAtHead
          : spacingAtHead // ignore: cast_nullable_to_non_nullable
              as double,
      spacingAtTail: null == spacingAtTail
          ? _value.spacingAtTail
          : spacingAtTail // ignore: cast_nullable_to_non_nullable
              as double,
      turnSpeed: null == turnSpeed
          ? _value.turnSpeed
          : turnSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnakeDescriptionImplCopyWith<$Res>
    implements $SnakeDescriptionCopyWith<$Res> {
  factory _$$SnakeDescriptionImplCopyWith(_$SnakeDescriptionImpl value,
          $Res Function(_$SnakeDescriptionImpl) then) =
      __$$SnakeDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double length,
      double radius,
      double spacingAtHead,
      double spacingAtTail,
      double turnSpeed});
}

/// @nodoc
class __$$SnakeDescriptionImplCopyWithImpl<$Res>
    extends _$SnakeDescriptionCopyWithImpl<$Res, _$SnakeDescriptionImpl>
    implements _$$SnakeDescriptionImplCopyWith<$Res> {
  __$$SnakeDescriptionImplCopyWithImpl(_$SnakeDescriptionImpl _value,
      $Res Function(_$SnakeDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? radius = null,
    Object? spacingAtHead = null,
    Object? spacingAtTail = null,
    Object? turnSpeed = null,
  }) {
    return _then(_$SnakeDescriptionImpl(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      spacingAtHead: null == spacingAtHead
          ? _value.spacingAtHead
          : spacingAtHead // ignore: cast_nullable_to_non_nullable
              as double,
      spacingAtTail: null == spacingAtTail
          ? _value.spacingAtTail
          : spacingAtTail // ignore: cast_nullable_to_non_nullable
              as double,
      turnSpeed: null == turnSpeed
          ? _value.turnSpeed
          : turnSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SnakeDescriptionImpl implements _SnakeDescription {
  const _$SnakeDescriptionImpl(
      {required this.length,
      required this.radius,
      required this.spacingAtHead,
      required this.spacingAtTail,
      required this.turnSpeed});

  @override
  final double length;
  @override
  final double radius;
  @override
  final double spacingAtHead;
  @override
  final double spacingAtTail;
  @override
  final double turnSpeed;

  @override
  String toString() {
    return 'SnakeDescription(length: $length, radius: $radius, spacingAtHead: $spacingAtHead, spacingAtTail: $spacingAtTail, turnSpeed: $turnSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnakeDescriptionImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.spacingAtHead, spacingAtHead) ||
                other.spacingAtHead == spacingAtHead) &&
            (identical(other.spacingAtTail, spacingAtTail) ||
                other.spacingAtTail == spacingAtTail) &&
            (identical(other.turnSpeed, turnSpeed) ||
                other.turnSpeed == turnSpeed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, length, radius, spacingAtHead, spacingAtTail, turnSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnakeDescriptionImplCopyWith<_$SnakeDescriptionImpl> get copyWith =>
      __$$SnakeDescriptionImplCopyWithImpl<_$SnakeDescriptionImpl>(
          this, _$identity);
}

abstract class _SnakeDescription implements SnakeDescription {
  const factory _SnakeDescription(
      {required final double length,
      required final double radius,
      required final double spacingAtHead,
      required final double spacingAtTail,
      required final double turnSpeed}) = _$SnakeDescriptionImpl;

  @override
  double get length;
  @override
  double get radius;
  @override
  double get spacingAtHead;
  @override
  double get spacingAtTail;
  @override
  double get turnSpeed;
  @override
  @JsonKey(ignore: true)
  _$$SnakeDescriptionImplCopyWith<_$SnakeDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnakeEntity _$SnakeEntityFromJson(Map<String, dynamic> json) {
  return _SnakeEntity.fromJson(json);
}

/// @nodoc
mixin _$SnakeEntity {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  @Vector2Converter()
  Vector2 get head => throw _privateConstructorUsedError;
  @Vector2Converter()
  set head(Vector2 value) => throw _privateConstructorUsedError;
  double get angle => throw _privateConstructorUsedError;
  set angle(double value) => throw _privateConstructorUsedError;
  double get desiredAngle => throw _privateConstructorUsedError;
  set desiredAngle(double value) => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  set score(int value) => throw _privateConstructorUsedError;
  bool get boost => throw _privateConstructorUsedError;
  set boost(bool value) => throw _privateConstructorUsedError;
  @Vector2Converter()
  List<Vector2> get tracers => throw _privateConstructorUsedError;
  @Vector2Converter()
  set tracers(List<Vector2> value) => throw _privateConstructorUsedError;
  String get skin => throw _privateConstructorUsedError;
  set skin(String value) => throw _privateConstructorUsedError;
  bool get dead => throw _privateConstructorUsedError;
  set dead(bool value) => throw _privateConstructorUsedError;
  int get eliminations => throw _privateConstructorUsedError;
  set eliminations(int value) => throw _privateConstructorUsedError;
  double get boostTimer => throw _privateConstructorUsedError;
  set boostTimer(double value) => throw _privateConstructorUsedError;
  @Vector2Converter()
  Vector2? get previousDropPosition => throw _privateConstructorUsedError;
  @Vector2Converter()
  set previousDropPosition(Vector2? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnakeEntityCopyWith<SnakeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnakeEntityCopyWith<$Res> {
  factory $SnakeEntityCopyWith(
          SnakeEntity value, $Res Function(SnakeEntity) then) =
      _$SnakeEntityCopyWithImpl<$Res, SnakeEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      @Vector2Converter() Vector2 head,
      double angle,
      double desiredAngle,
      int score,
      bool boost,
      @Vector2Converter() List<Vector2> tracers,
      String skin,
      bool dead,
      int eliminations,
      double boostTimer,
      @Vector2Converter() Vector2? previousDropPosition});
}

/// @nodoc
class _$SnakeEntityCopyWithImpl<$Res, $Val extends SnakeEntity>
    implements $SnakeEntityCopyWith<$Res> {
  _$SnakeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? head = null,
    Object? angle = null,
    Object? desiredAngle = null,
    Object? score = null,
    Object? boost = null,
    Object? tracers = null,
    Object? skin = null,
    Object? dead = null,
    Object? eliminations = null,
    Object? boostTimer = null,
    Object? previousDropPosition = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as Vector2,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      desiredAngle: null == desiredAngle
          ? _value.desiredAngle
          : desiredAngle // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      boost: null == boost
          ? _value.boost
          : boost // ignore: cast_nullable_to_non_nullable
              as bool,
      tracers: null == tracers
          ? _value.tracers
          : tracers // ignore: cast_nullable_to_non_nullable
              as List<Vector2>,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
      dead: null == dead
          ? _value.dead
          : dead // ignore: cast_nullable_to_non_nullable
              as bool,
      eliminations: null == eliminations
          ? _value.eliminations
          : eliminations // ignore: cast_nullable_to_non_nullable
              as int,
      boostTimer: null == boostTimer
          ? _value.boostTimer
          : boostTimer // ignore: cast_nullable_to_non_nullable
              as double,
      previousDropPosition: freezed == previousDropPosition
          ? _value.previousDropPosition
          : previousDropPosition // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnakeEntityImplCopyWith<$Res>
    implements $SnakeEntityCopyWith<$Res> {
  factory _$$SnakeEntityImplCopyWith(
          _$SnakeEntityImpl value, $Res Function(_$SnakeEntityImpl) then) =
      __$$SnakeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @Vector2Converter() Vector2 head,
      double angle,
      double desiredAngle,
      int score,
      bool boost,
      @Vector2Converter() List<Vector2> tracers,
      String skin,
      bool dead,
      int eliminations,
      double boostTimer,
      @Vector2Converter() Vector2? previousDropPosition});
}

/// @nodoc
class __$$SnakeEntityImplCopyWithImpl<$Res>
    extends _$SnakeEntityCopyWithImpl<$Res, _$SnakeEntityImpl>
    implements _$$SnakeEntityImplCopyWith<$Res> {
  __$$SnakeEntityImplCopyWithImpl(
      _$SnakeEntityImpl _value, $Res Function(_$SnakeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? head = null,
    Object? angle = null,
    Object? desiredAngle = null,
    Object? score = null,
    Object? boost = null,
    Object? tracers = null,
    Object? skin = null,
    Object? dead = null,
    Object? eliminations = null,
    Object? boostTimer = null,
    Object? previousDropPosition = freezed,
  }) {
    return _then(_$SnakeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as Vector2,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
      desiredAngle: null == desiredAngle
          ? _value.desiredAngle
          : desiredAngle // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      boost: null == boost
          ? _value.boost
          : boost // ignore: cast_nullable_to_non_nullable
              as bool,
      tracers: null == tracers
          ? _value.tracers
          : tracers // ignore: cast_nullable_to_non_nullable
              as List<Vector2>,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
      dead: null == dead
          ? _value.dead
          : dead // ignore: cast_nullable_to_non_nullable
              as bool,
      eliminations: null == eliminations
          ? _value.eliminations
          : eliminations // ignore: cast_nullable_to_non_nullable
              as int,
      boostTimer: null == boostTimer
          ? _value.boostTimer
          : boostTimer // ignore: cast_nullable_to_non_nullable
              as double,
      previousDropPosition: freezed == previousDropPosition
          ? _value.previousDropPosition
          : previousDropPosition // ignore: cast_nullable_to_non_nullable
              as Vector2?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnakeEntityImpl extends _SnakeEntity {
  _$SnakeEntityImpl(
      {required this.id,
      required this.name,
      @Vector2Converter() required this.head,
      required this.angle,
      required this.desiredAngle,
      required this.score,
      required this.boost,
      @Vector2Converter() required this.tracers,
      required this.skin,
      required this.dead,
      required this.eliminations,
      this.boostTimer = 0.0,
      @Vector2Converter() this.previousDropPosition})
      : super._();

  factory _$SnakeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnakeEntityImplFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  @Vector2Converter()
  Vector2 head;
  @override
  double angle;
  @override
  double desiredAngle;
  @override
  int score;
  @override
  bool boost;
  @override
  @Vector2Converter()
  List<Vector2> tracers;
  @override
  String skin;
  @override
  bool dead;
  @override
  int eliminations;
  @override
  @JsonKey()
  double boostTimer;
  @override
  @Vector2Converter()
  Vector2? previousDropPosition;

  @override
  String toString() {
    return 'SnakeEntity(id: $id, name: $name, head: $head, angle: $angle, desiredAngle: $desiredAngle, score: $score, boost: $boost, tracers: $tracers, skin: $skin, dead: $dead, eliminations: $eliminations, boostTimer: $boostTimer, previousDropPosition: $previousDropPosition)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnakeEntityImplCopyWith<_$SnakeEntityImpl> get copyWith =>
      __$$SnakeEntityImplCopyWithImpl<_$SnakeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnakeEntityImplToJson(
      this,
    );
  }
}

abstract class _SnakeEntity extends SnakeEntity {
  factory _SnakeEntity(
      {required String id,
      required String name,
      @Vector2Converter() required Vector2 head,
      required double angle,
      required double desiredAngle,
      required int score,
      required bool boost,
      @Vector2Converter() required List<Vector2> tracers,
      required String skin,
      required bool dead,
      required int eliminations,
      double boostTimer,
      @Vector2Converter() Vector2? previousDropPosition}) = _$SnakeEntityImpl;
  _SnakeEntity._() : super._();

  factory _SnakeEntity.fromJson(Map<String, dynamic> json) =
      _$SnakeEntityImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  @Vector2Converter()
  Vector2 get head;
  @Vector2Converter()
  set head(Vector2 value);
  @override
  double get angle;
  set angle(double value);
  @override
  double get desiredAngle;
  set desiredAngle(double value);
  @override
  int get score;
  set score(int value);
  @override
  bool get boost;
  set boost(bool value);
  @override
  @Vector2Converter()
  List<Vector2> get tracers;
  @Vector2Converter()
  set tracers(List<Vector2> value);
  @override
  String get skin;
  set skin(String value);
  @override
  bool get dead;
  set dead(bool value);
  @override
  int get eliminations;
  set eliminations(int value);
  @override
  double get boostTimer;
  set boostTimer(double value);
  @override
  @Vector2Converter()
  Vector2? get previousDropPosition;
  @Vector2Converter()
  set previousDropPosition(Vector2? value);
  @override
  @JsonKey(ignore: true)
  _$$SnakeEntityImplCopyWith<_$SnakeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
