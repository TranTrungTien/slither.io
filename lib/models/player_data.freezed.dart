// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerData _$PlayerDataFromJson(Map<String, dynamic> json) {
  return _PlayerData.fromJson(json);
}

/// @nodoc
mixin _$PlayerData {
  int get balance => throw _privateConstructorUsedError;
  List<String> get skins => throw _privateConstructorUsedError;
  String get skin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerDataCopyWith<PlayerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDataCopyWith<$Res> {
  factory $PlayerDataCopyWith(
          PlayerData value, $Res Function(PlayerData) then) =
      _$PlayerDataCopyWithImpl<$Res, PlayerData>;
  @useResult
  $Res call({int balance, List<String> skins, String skin});
}

/// @nodoc
class _$PlayerDataCopyWithImpl<$Res, $Val extends PlayerData>
    implements $PlayerDataCopyWith<$Res> {
  _$PlayerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? skins = null,
    Object? skin = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      skins: null == skins
          ? _value.skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerDataImplCopyWith<$Res>
    implements $PlayerDataCopyWith<$Res> {
  factory _$$PlayerDataImplCopyWith(
          _$PlayerDataImpl value, $Res Function(_$PlayerDataImpl) then) =
      __$$PlayerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int balance, List<String> skins, String skin});
}

/// @nodoc
class __$$PlayerDataImplCopyWithImpl<$Res>
    extends _$PlayerDataCopyWithImpl<$Res, _$PlayerDataImpl>
    implements _$$PlayerDataImplCopyWith<$Res> {
  __$$PlayerDataImplCopyWithImpl(
      _$PlayerDataImpl _value, $Res Function(_$PlayerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? skins = null,
    Object? skin = null,
  }) {
    return _then(_$PlayerDataImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      skins: null == skins
          ? _value._skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skin: null == skin
          ? _value.skin
          : skin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerDataImpl implements _PlayerData {
  const _$PlayerDataImpl(
      {required this.balance,
      required final List<String> skins,
      required this.skin})
      : _skins = skins;

  factory _$PlayerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerDataImplFromJson(json);

  @override
  final int balance;
  final List<String> _skins;
  @override
  List<String> get skins {
    if (_skins is EqualUnmodifiableListView) return _skins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skins);
  }

  @override
  final String skin;

  @override
  String toString() {
    return 'PlayerData(balance: $balance, skins: $skins, skin: $skin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDataImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality().equals(other._skins, _skins) &&
            (identical(other.skin, skin) || other.skin == skin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, balance, const DeepCollectionEquality().hash(_skins), skin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDataImplCopyWith<_$PlayerDataImpl> get copyWith =>
      __$$PlayerDataImplCopyWithImpl<_$PlayerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerDataImplToJson(
      this,
    );
  }
}

abstract class _PlayerData implements PlayerData {
  const factory _PlayerData(
      {required final int balance,
      required final List<String> skins,
      required final String skin}) = _$PlayerDataImpl;

  factory _PlayerData.fromJson(Map<String, dynamic> json) =
      _$PlayerDataImpl.fromJson;

  @override
  int get balance;
  @override
  List<String> get skins;
  @override
  String get skin;
  @override
  @JsonKey(ignore: true)
  _$$PlayerDataImplCopyWith<_$PlayerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
